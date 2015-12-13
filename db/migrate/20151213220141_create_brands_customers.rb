class CreateBrandsCustomers < ActiveRecord::Migration
  def change
    create_table :brands_customers do |t|
      t.belongs_to :brand, index: true
      t.belongs_to :customer, index: true
    end
  end
end
