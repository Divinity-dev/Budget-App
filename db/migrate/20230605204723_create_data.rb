# frozen_string_literal: true

class CreateData < ActiveRecord::Migration[7.0]
  def change
    create_table :data do |t|
      t.integer :author_id
      t.string :name
      t.decimal :amount

      t.timestamps
    end
  end
end
