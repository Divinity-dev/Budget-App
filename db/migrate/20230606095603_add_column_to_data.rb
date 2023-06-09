class AddColumnToData < ActiveRecord::Migration[7.0]
  def change
    add_reference :data, :user, null: false, foreign_key: true
  end
end
