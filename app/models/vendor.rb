class Vendor < ApplicationRecord
    belongs_to :vendor_type 
    validates :name, presence: true 
end
