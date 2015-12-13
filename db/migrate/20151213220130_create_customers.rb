class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.string :email
      t.string :mobile
      t.date :birth_date
      t.string :title
      t.string :gender

      t.timestamps
    end
  end
end
