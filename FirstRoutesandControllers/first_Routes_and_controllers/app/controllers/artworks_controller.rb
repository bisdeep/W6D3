class ArtworksController < ApplicationController
        
    def index
        #debugger
        if params.has_key?(:user_id)
            #render json: :user_id
            
            @artworks = Artwork.findart(params[:user_id])
                        
        end
        render json: @artworks
    end

    def show
        @artwork = Artwork.find(params[:id])
        render json: @artwork
    end

    def create
        @artwork = Artwork.new(artwork_params)
        if @artwork.save
          render json: @artwork
        else
          render json: @artwork.errors.full_messages, status: :unprocessable_entity
        end
    end

    def update
        @artwork = Artwork.find(params[:id])

        if @artwork.update(artwork_params) #calls update from ActiveRecord
            redirect_to artworks_url(@artwork)
        else
            render json: @artwork.errors.full_messages, status: 422
            #renders json
        end

    end

    def destroy
        @artwork = Artwork.find(params[:id]) #we can only destroy if we already have it
        @artwork.destroy
        redirect_to artworks_url
    end




    private

    def artwork_params
        params.require(:artwork).permit(:title, :image_url, :artist_id)
    end

end