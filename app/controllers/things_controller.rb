class ThingsController < ApplicationController
  before_action :set_thing, only: [:show, :edit, :update]
  before_action :authenticate_user!


  # GET/things/yours
  def yourthings
    @things = Thing.where(:user_id => current_user.id)
  end

  # GET /things
  # GET /things.json
  def index
    @tags = Tag.all
    @things = Thing.all
    @users = User.all
  end

  # GET /things/1
  # GET /things/1.json
  def show
    @tags = Tag.all
    @thing = Thing.find(params[:id])
    #@owner = @thing.owner
    #@owners= User.find_by(id: @owner)
  end

  # GET /things/new
  def new
    @tags= Tag.all
    @thing = Thing.new
  end

  # GET /things/1/edit
  def edit
    if current_user.id == @thing.user_id
      @tags= Tag.all
      @thing = Thing.find(params[:id])
      # @thing.thing_images
      puts "Loading page"
      flash[:success] = "You Own this item and can edit it"
    else 
      redirect_to thing_path
      flash[:notice] = "You do not own this item so you can't edit it. If you have issue with something here take it up with the owner"
      puts "Can't load page"
    end
  end

  # POST /things
  # POST /things.json
  def create

    @thing = Thing.new(thing_params)
    @thing.user_id = current_user.id
    respond_to do |format|
      if @thing.save
        format.html { redirect_to @thing, notice: 'Thing was successfully created.' }
        format.json { render :show, status: :created, location: @thing }
      else
        format.html { render :new }
        format.json { render json: @thing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /things/1
  # PATCH/PUT /things/1.json
  def update

    image_array = @thing.thing_images

    if params[:images_to_delete]
      params[:images_to_delete].each do |index|
        deleted_image = image_array.delete_at(index.to_i)
        deleted_image.try(:remove!)
      end
    end

    if params[:thing][:thing_images].present?
      image_array += params[:thing][:thing_images]
    end

    @thing.thing_images = image_array

    respond_to do |format|
      if @thing.update(thing_params)
        format.html { redirect_to @thing, notice: 'Thing was successfully updated.' }
        format.json { render :show, status: :ok, location: @thing }
      else
        format.html { render :edit }
        format.json { render json: @thing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /things/1
  # DELETE /things/1.json
  def destroy
    @thing = Thing.find(params[:id])
    puts @thing.id.to_s + ": The :id of the thing"

    @thing.destroy
    respond_to do |format|
      format.html { redirect_to things_url, notice: 'Thing was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_thing
      @thing = Thing.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def thing_params
      params.require(:thing).permit(:title, :description, :category_id, :user_id, tag_ids: [], thing_images: [])
    end
end
