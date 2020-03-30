class VendorTypeSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :img, :id
  has_many :vendors 
end
