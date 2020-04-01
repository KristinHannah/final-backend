class Api::V1::VendorTypesController < ApplicationController

    skip_before_action :verify_authenticity_token

    def index 
        vendor_types = VendorType.all 
        # options = {} 
        # options[:include] = [:vendors, :'vendor.name', :'vendor.location', :'vendor.quote', :'vendor.availability']
        render json: VendorTypeSerializer.new(vendor_types).serializable_hash
        # vendor_types.to_json
    end 

    def create 
        @vendor_type = VendorType.new(vendor_type_params)
        if @vendor_type.save 
            render json: VendorTypeSerializer.new(@vendor_type)
        else 
            render json: {error: "Error creating vendor type" }
        end 
    end 

    def show 
        vendor_type = VendorType.find(params[:id])
       # options = {} 
       # options[:include] = [:vendors, :'vendor.name', :'vendor.location', :'vendor.quote', :'vendor.availability']
        render json: VendorTypeSerializer.new(vendor_type).serializable_hash
        # vendor_type.to_json(:include => {:vendors => {:only => [:name, :location, :availability,:quote]}})
       # VendorTypeSerializer.new(@vendor_type)
    end 

    def destroy 
        @vendor_type = VendorType.find(params[:id])
        @vendor_type.destroy 
    end 

    private 

    def vendor_type_params
        params.require(:vendor_type).permit(:name, :img)
    end 

end
