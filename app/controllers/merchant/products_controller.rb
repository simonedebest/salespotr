class Merchant::ProductsController < ApplicationController
  include DeviseCreateUsers::MerchantsHelper
  before_action :check_merchant, only:[ :new, :create ]

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(params.require(:product).permit(:name, :description, :price, :url))
    @product.save!
    redirect_to product_path(@product)
  end

end
