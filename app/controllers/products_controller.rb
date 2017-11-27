class ProductsController < ApplicationController
  def new
  end

  def index
      # @products = Product.all
    if params[:search]
      @products = Product.search(params[:search]).order("created_at DESC")
    else
      @products = Product.all.order('created_at DESC')
    end
  end

  def show
  end
end
