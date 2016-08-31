class Meal < MiniActiveRecord::Model

  attr_reader :attributes, :old_attributes

  def self.create(attributes)
    record = self.new(attributes)
    record.save

    record
  end

  self.attribute_names = [:id, :name, :chef_id, :created_at, :updated_at]

  # e.g., Meal.new(id: 1, name: 'Chicken', created_at: '2012-12-01 05:54:30')
  def initialize(attributes = {})
    attributes.symbolize_keys!
    raise_error_if_invalid_attribute!(attributes.keys)

    @attributes = {}

    Meal.attribute_names.each { |name| @attributes[name] = attributes[name] }

    @old_attributes = @attributes.dup
  end

  def chef
    Chef.where('id = ?', self[:chef_id])
  end

  def chef=(chef)
    self[:chef_id] = chef[:id]
    self.save

    chef
  end

  def save
    new_record? ? results = insert! : results = update!

    # When we save, remove changes between new and old attributes
    @old_attributes = @attributes.dup

    results
  end

end
