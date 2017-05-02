class CategoriesController < ApplicationController
  def index
    render json: Category.includes(:parent)
  end

  def show
    category = Category.find(params[:id])

    render json: category
  end
end
