class Api::V1::VendorsController < ApplicationController
   before_action :set_vendor_type
    
    def index 
        @vendors = @vendor_type.vendors 
        render json: @vendor
    end 

    def create 
        @vendor = @vendor_type.vendors.new(vendor_params)
        if @vendor.save 
            render json: @vendor
        else 
            render json: {error: "Error creating vendor type" }
        end 
    end 

    def show 
        @vendor = Vendor.find(params[:id])
        render json: @vendor
    end 

    def destroy 
        @vendor = Vendor.find(params[:id])
        @vendor.destroy 
    end 


    private 

    def set_vendor_type 
        @vendor_type = VendorType.find(params[:vendor_type_id])
    end 

    def vendor_params
        params.require(:vendor).permit(:name, :location, :availability, :quote, :vendor_type_id)
    end 

end
