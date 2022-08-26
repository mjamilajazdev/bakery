# frozen_string_literal: true

class Item < ApplicationRecord
  has_many :line_items, dependent: :destroy
  has_many :cart_items, dependent: :destroy
  has_many :categories_items, dependent: :destroy
  has_many :categories, through: :categories_items
end
