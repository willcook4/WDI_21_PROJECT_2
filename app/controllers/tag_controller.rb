class TagController < ApplicationController
  
  def index
    @tags = Tag.all
    @users = User.all
    @things = Things.all
  end

  def show
    @users = User.all
    @tags = Tag.all
    @tag = Tag.find(params[:id])
  end
end
