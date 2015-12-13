class CreateAccesskeys < ActiveRecord::Migration
  def change
    create_table :accesskeys do |t|
      t.string :key
      t.references :location, index: true
      t.string :expire_at
      t.boolean :active

      t.timestamps
    end
  end
end
