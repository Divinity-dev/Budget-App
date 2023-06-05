# frozen_string_literal: true

class CreateCategoryData < ActiveRecord::Migration[7.0]
  def change
    create_table :category_data do |t|
      t.references :category, null: false, foreign_key: true
      t.references :data, null: false, foreign_key: true

      t.timestamps
    end
  end
end
