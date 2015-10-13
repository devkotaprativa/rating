class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_param)
    @category.save
    flash.notice = "Category #{@category} successfully created!!!"
    redirect_to categories_path
  end

  def edit
    @category = Category.find(params[:id])
  end

  def destroy
  end

  def show
  end

  def update
  end

  def category_param
    params.require(:category).permit(:name)
  end
end
