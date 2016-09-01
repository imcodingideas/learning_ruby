class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.column :text, :string
      t.column :status, :boolean, :default => false
    end
  end
end
