class VendorTypeSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :img, :id
end
