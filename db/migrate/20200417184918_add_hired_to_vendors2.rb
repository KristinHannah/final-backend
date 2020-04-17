class AddHiredToVendors2 < ActiveRecord::Migration[5.2]
  def change
    add_column :vendors, :hired, :boolean, :default => false 
  end
end
