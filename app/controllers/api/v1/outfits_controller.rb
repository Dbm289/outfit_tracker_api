module api
    module v1
        class OutfitController < ApplicationController
            def index
                @outfits = Outfit.all
                render json: @outfits, status: 200
            end
        
            def show
                @list = Outfit.find(params[:id])
                render json: @outfit, status: 200
            end
            
            def create
                #binding.pry
                @outfit = Outfit.create(outfit_params)
                if @outfit
                    render json: @outfit
                else
                    render json: {error: 'This outfit could not be created.'}
                end
            end
        
            def update
                @outfit = Outfit.find(params[:id])
                @outfit.update(outfit_params)
                if @outfit
                    render json: @outfit
                else
                    render json: {error: 'This outfit could not be edited.'}
                end
            end
        
            def destroy
                @outfit = Outfit.find(params[:id])
                @outfit.destroy
                render json: {message: 'Outfit successfully deleted.'}
            end
        
        
            private
            def list_params
                params.require(:outfit).permit(:image)
            end 

    end

end