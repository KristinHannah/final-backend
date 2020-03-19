class CreateVendorTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :vendor_types do |t|
      t.string :name
      t.string :img

      t.timestamps
    end
  end
end
