class Chef < MiniActiveRecord::Model

  attr_reader :attributes, :old_attributes

  def self.create(attributes)
    record = self.new(attributes)
    record.save

    record
  end

  self.attribute_names = [:id, :first_name, :last_name, :email, :phone,
                          :birthday, :created_at, :updated_at]

  # e.g., Chef.new(id: 1, first_name: 'Steve', last_name: 'Rogers', ...)
  def initialize(attributes = {})
    attributes.symbolize_keys!
    raise_error_if_invalid_attribute!(attributes.keys)

    # This defines the value even if it's not present in attributes
    @attributes = {}

    Chef.attribute_names.each { |name| @attributes[name] = attributes[name] }

    @old_attributes = @attributes.dup
  end

  def save
    new_record? ? results = insert! : results = update!

    # When we save, remove changes between new and old attributes
    @old_attributes = @attributes.dup

    results
  end

  # e.g., chef[:first_name] #=> 'Steve'
  def [](attribute)
    raise_error_if_invalid_attribute!(attribute)

    @attributes[attribute]
  end

  # e.g., chef[:first_name] = 'Steve'
  def []=(attribute, value)
    raise_error_if_invalid_attribute!(attribute)

    @attributes[attribute] = value
  end

  def meals
    Meal.where('chef_id = ?', self[:id])
  end

  def add_meals(meals)
    meals.each { |meal| meal.chef = self }
    meals
  end


  private

  def insert!
    self[:created_at] = DateTime.now
    self[:updated_at] = DateTime.now

    fields = self.attributes.keys
    values = self.attributes.values
    marks  = Array.new(fields.length) { '?' }.join(',')

    insert_sql = "INSERT INTO chefs (#{fields.join(',')}) VALUES (#{marks})"

    results = MiniActiveRecord::Model.execute(insert_sql, *values)

    # This fetches the new primary key and updates this instance
    self[:id] = MiniActiveRecord::Model.last_insert_row_id
    results
  end

  def update!
    self[:updated_at] = DateTime.now

    fields = self.attributes.keys
    values = self.attributes.values

    update_clause = fields.map { |field| "#{field} = ?" }.join(',')
    update_sql = "UPDATE chefs SET #{update_clause} WHERE id = ?"

    # We have to use the (potentially) old ID attribute in case the user has re-set it.
    MiniActiveRecord::Model.execute(update_sql, *values, self.old_attributes[:id])
  end
end
