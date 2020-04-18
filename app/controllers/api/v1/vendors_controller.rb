class Api::V1::VendorsController < ApplicationController
  before_action :set_vendor_type
  skip_before_action :verify_authenticity_token
    
    def index 
        @vendors = @vendor_type.vendors 
        render json: VendorSerializer.new(@vendors)
    end 

    def create 
        @vendor = @vendor_type.vendors.new(vendor_params)
        if @vendor.save 
            render json: VendorTypeSerializer.new(@vendor_type)
        else 
            render json: {error: "Error creating vendor type" }
        end 
    end 

    def show 
        @vendor = Vendor.find(params[:id])
        render json: VendorSerializer.new(@vendor)
    end 

    def update 
        @vendor = @vendor_type.vendors.find(params[:id])
        @vendor.update(hired: params["vendor"]["hired"])
        @vendor.save
        render json: VendorTypeSerializer.new(@vendor_type)
    end 

    def destroy 
        @vendor = Vendor.find(params[:id])
        @vendorType = VendorType.find(@vendor.vendor_type_id)
        @vendor.destroy 
        render json: VendorTypeSerializer.new(@vendorType).serializable_hash
    end 


    private 

    def set_vendor_type 
        @vendor_type = VendorType.find(params[:vendor_type_id])
    end 

    def vendor_params
        params.require(:vendor).permit(:name, :location, :availability, :quote, :hired, :vendor_type_id)
    end 

end
