# frozen_string_literal: true

class CategoriesController < ApplicationController
  def index
    Category.all
  end

  def show
    Category.find(params[:id])
  end

  private

  def category_params
    params.require(:category).permit(:title)
  end
end
