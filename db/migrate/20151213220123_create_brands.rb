class CreateBrands < ActiveRecord::Migration
  def change
    create_table :brands do |t|
      t.string :name
      t.string :websites
      t.string :email
      t.string :description
      t.string :phone
      t.references :user, index: true

      t.timestamps
    end
  end
end
