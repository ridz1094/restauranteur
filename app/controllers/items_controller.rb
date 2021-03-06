class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy]

  # GET /items
  # GET /items.json
  def index
    if params[:searchStr].present?
      searchArr = params[:searchStr].split(",")
      @items = Item.tagged_with(searchArr, :any => true)
    else
      @items = Item.all
    end
  end

  # GET /items/1
  # GET /items/1.json
  def show
  end

  # POST /items
  # POST /items.json
  def create
    @item = Item.new(item_params)
    item_params[:tag_list].present? ? @item.tag_list.add(item_params[:tag_list].split(", ")) : nil
    if !@item.save
      render json: @item.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /items/1
  # PATCH/PUT /items/1.json
  def update
    @item.name = item_params[:name]
    @item.price = item_params[:price]
    item_params[:tag_list].present? ? @item.tag_list.add(item_params[:tag_list].split(", ")) : nil
    if !@item.save
      render json: @item.errors, status: :unprocessable_entity
    end
  end

  # DELETE /items/1
  # DELETE /items/1.json
  def destroy
    @item.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item
      @item = Item.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def item_params
      params.require(:item).permit(:id, :name, :price, :tag_list)
    end
end
