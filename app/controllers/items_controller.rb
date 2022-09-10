# frozen_string_literal: true

class ItemsController < ApplicationController
  def index
    Item.all
  end

  def show
    Item.find(params[:id])
  end

  private

  def item_params
    params.require(:item).permit(:title, :description, :price)
  end
end
