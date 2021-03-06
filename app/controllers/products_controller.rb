class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_admin!, only: [:new, :edit, :update, :destroy]

  def index
    if params[:search]
      @products = Product.search(params[:search]).order("created_at DESC").page(params[:page]).per_page(10)
    end
  end

  def show
  end

  def new
    @product = Product.new
    authorize! :new, @product
  end

  def create
    @product = Product.new(product_params)

    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: 'Product was successfully created.' }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
    authorize! :create, @product
  end

  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product, notice: 'Product was successfully updated.' }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
    authorize! :update, @product
  end

  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: 'Product was successfully destroyed.' }
      format.json { head :no_content }
    end
    authorize! :destroy, @product
  end

  private
  # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

  # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:item, :plastic_free, :description, :packaging, :rating, :picture, :store, location_ids:[])
    end

end
