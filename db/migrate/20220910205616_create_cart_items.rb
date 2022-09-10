# frozen_string_literal: true

class CreateCartItems < ActiveRecord::Migration[6.1]
  def change
    create_table :cart_items do |t|
      t.references :cart, foreign_key: true
      t.timestamps
    end
  end
end
