class VendorTypeSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :img, :id
  has_many :vendors, serializer: VendorSerializer 

  attribute :vendors do |vendorType|
    VendorSerializer.new(vendorType.vendors).as_json["data"]
  end
end
