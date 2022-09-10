# frozen_string_literal: true

class CreateItem < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :title
      t.text :description
      t.integer :price
      t.timestamps
    end
    add_reference :line_items, :item
    add_reference :cart_items, :item
  end
end
