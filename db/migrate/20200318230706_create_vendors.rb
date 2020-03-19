class CreateVendors < ActiveRecord::Migration[5.2]
  def change
    create_table :vendors do |t|
      t.string :name
      t.string :location
      t.string :availability
      t.integer :quote
      t.integer :vendor_type_id

      t.timestamps
    end
  end
end
