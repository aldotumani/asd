class TextItemsController < ApplicationController
  before_action :set_text_item, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /text_items
  # GET /text_items.json
  def index
    @text_items = TextItem.all
  end

  # GET /text_items/1
  # GET /text_items/1.json
  def show
  end

  # GET /text_items/new
  def new
    @text_item = TextItem.new
  end

  # GET /text_items/1/edit
  def edit
  end

  # POST /text_items
  # POST /text_items.json
  def create
    @text_item = TextItem.new(text_item_params)

    respond_to do |format|
      if @text_item.save
        format.html { redirect_to text_items_url, notice: 'Text item was successfully created.' }
        format.json { render :show, status: :created, location: @text_item }
      else
        format.html { render :new }
        format.json { render json: @text_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /text_items/1
  # PATCH/PUT /text_items/1.json
  def update
    respond_to do |format|
      if @text_item.update(text_item_params)
        format.html { redirect_to text_items_url, notice: 'Text item was successfully updated.' }
        format.json { render :show, status: :ok, location: @text_item }
      else
        format.html { render :edit }
        format.json { render json: @text_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /text_items/1
  # DELETE /text_items/1.json
  def destroy
    @text_item.destroy
    respond_to do |format|
      format.html { redirect_to text_items_url, notice: 'Text item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_text_item
      @text_item = TextItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def text_item_params
      params.require(:text_item).permit(:nosotros, :quehacemos, :elegirnos, :contacto, :quehacemos2)
    end
end
