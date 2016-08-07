class ImagesController < ApplicationController
  before_action :set_thing # Which thing are we adding or removing images from? 

  def create
    add_more_images(image_params[:thing_images])
    flash[:error] = "Failed uploading images" unless @thing.save
    redirect_to :back
  end

  def destroy
    remove_image_at_index(params[:id].to_i)
    flash[:error] = "Failed to Delete image" unless @thing.save
    redirect_to :back
  end

  private
    def set_thing
      @thing = Thing.find(params[:thing_id])
    end

    def add_more_images(new_images)
      images = @thing.thing_images # Copy the existing images array
      images += new_images # Add the new images to the array
      @thing.thing_images = images # return
    end

    def remove_image_at_index(index)
      remain_images = @thing.thing_images #Copy the existing array of images
      deleted_image = remain_images.delete_at(index) #Delete the selected image
      @thing.thing_images = remain_images #Return the array
    end

    def image_params
      params.require(:thing).permit(thing_images: [])
    end
end
