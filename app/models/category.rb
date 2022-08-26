# frozen_string_literal: true

class Category < ApplicationRecord
  has_many :categories_items, dependent: :destroy
  has_many :items, through: :cartegories_items
end
