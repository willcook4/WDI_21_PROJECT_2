class TagController < ApplicationController
  
  def index
    @tags = Tag.all
  end

  def show
    @tag = Tag.find(params[:id])
    @thing = Thing.where(:tag_ids => params[:id])
  end
end
