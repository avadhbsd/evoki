class CreateCustomersLocations < ActiveRecord::Migration
  def change
    create_table :customers_locations do |t|
      t.belongs_to :customer, index: true
      t.belongs_to :location, index: true
    end
  end
end
