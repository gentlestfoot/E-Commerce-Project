class CategoriesController < ApplicationController
  def show
    @name = Category.find(params[:id]).name
    @products = Category.find(params[:id]).products
  end
end
