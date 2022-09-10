# frozen_string_literal: true

class Item < ApplicationRecord
  has_many :line_items, dependent: :destroy
  has_many :cart_items, dependent: :destroy
  has_many :category_items, dependent: :destroy
  has_many :categories, through: :category_items, dependent: :destroy
end
