# frozen_string_literal: true

class Category < ApplicationRecord
  has_many :category_items, dependent: :destroy
  has_many :items, through: :cartegories_items, dependent: :destroy
end
