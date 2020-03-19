# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

vendor_type = VendorType.create(name: 'venue')

vendor = Vendor.create(vendor_type_id: 1, name: 'Box House Hotel', location: 'Greenpoint, Brooklyn, NY', availability: 'September 18, 2020', quote: '195')

vendor_two = Vendor.create(vendor_type_id: 1, name: 'Dobbin Street', location: 'Williamsburg, Brooklyn, NY', availability: 'November 14, 2020, October 31, 2020', quote: '220')