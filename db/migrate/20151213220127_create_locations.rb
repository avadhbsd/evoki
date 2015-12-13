class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.references :brand, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
