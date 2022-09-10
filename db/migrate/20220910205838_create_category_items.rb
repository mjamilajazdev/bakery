# frozen_string_literal: true

class CreateCategoryItems < ActiveRecord::Migration[6.1]
  def change
    create_table :category_items do |t|
      t.references :item, foreign_key: true
      t.references :category, foreign_key: true
      t.timestamps
    end
  end
end
