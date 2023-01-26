class Admin::CategoriesController < ApplicationController
  http_basic_authenticate_with name: ENV["ADMIN_USERNAME"], password: ENV["ADMIN_PASSWORD"]
    def index
      @categories = Category.order(id: :desc).all
    end
  
    def new
      @category = Product.new
    end
  
    def create
      @category = Product.new(product_params)
  
      if @category.save
        redirect_to [:admin, :products], notice: 'Product created!'
      else
        render :new
      end
    end
  
    def destroy
      @category = Product.find params[:id]
      @category.destroy
      redirect_to [:admin, :categories], notice: 'Category deleted!'
    end
  
    private
  
    def category_params

    end
  
  end
  