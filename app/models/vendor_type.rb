class VendorType < ApplicationRecord
    has_many :vendors 
    validates :name, presence: true 
end
