# Products controller
class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  # GET /products
  def index
    @products = Product.all
  end

  # GET /sources/new
  def new
    @product = Product.new
  end

  # POST /products
  def create
    @product = Product.new(product_params)
    if @product.save
      flash[:notice] = I18n.t('controllers.products.successfully_created')
      redirect_to product_path(@product)
    else
      flash[:error] = @product.errors.messages
      respond_to do |format|
        format.html { render :new }
      end
    end
  end

  # GET /products/1
  def show
  end

  # GET /products/1/edit
  def edit
  end

  # PATCH/PUT /products/1
  def update
    if @product.update(product_params)
      flash[:notice] = I18n.t('controllers.products.successfully_updated')
      redirect_to product_path(@product)
    else
      flash[:error] = @product.errors.messages
      render product_edit_path(@product)
    end
  end

  # DELETE /products/1
  def destroy
    @product.destroy
    flash[:notice] = I18n.t('controllers.products.successfully_destroyed')
    redirect_to products_url
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    base = [:name, brands: [], varieties: [], aspects: [], packagings: [],
            sizes: [], calibers: []]
    params.require(:product).permit(base)
  end

end
