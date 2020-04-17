class VendorSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :location, :availability, :quote, :hired, :id, :vendor_type_id
  #  belongs_to :vendor_type
end
