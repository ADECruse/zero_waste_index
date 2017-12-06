class ProductsController < ApplicationController
  

  def new
    @product = Product.new
  end

  def index
    if params[:search]
      @products = Product.search(params[:search]).order("created_at DESC")
    else
      @products = Product.all.order('created_at DESC')
    end
  end

  def show
  end

  def create
    @product = Product.new
    @product.save
  end



end
