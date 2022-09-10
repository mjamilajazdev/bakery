# frozen_string_literal: true

class CreateLineItems < ActiveRecord::Migration[6.1]
  def change
    create_table :line_items do |t|
      t.integer :quantity
      t.integer :price
      t.references :order, foreign_key: true
      t.timestamps
    end
  end
end
