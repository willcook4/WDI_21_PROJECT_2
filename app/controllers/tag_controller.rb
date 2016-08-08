class TagController < ApplicationController
  
  def index
    @tags = Tag.all
  end

  def show
    @tag = Tag.find(params[:id])
    @things = Things.find
  end
end
