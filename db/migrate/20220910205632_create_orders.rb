# frozen_string_literal: true

class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.integer :status
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
