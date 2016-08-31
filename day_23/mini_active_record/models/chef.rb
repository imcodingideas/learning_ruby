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

  def meals
    Meal.where('chef_id = ?', self[:id])
  end

  def add_meals(meals)
    meals.each { |meal| meal.chef = self }
    meals
  end

end
