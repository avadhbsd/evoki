class CreateFields < ActiveRecord::Migration
  def change
    create_table :fields do |t|
      t.string :name
      t.string :type
      t.references :customer, index: true
      t.boolean :active
      t.integer :position

      t.timestamps
    end
  end
end
