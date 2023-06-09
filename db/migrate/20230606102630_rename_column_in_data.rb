class RenameColumnInData < ActiveRecord::Migration[7.0]
  def change
    rename_column :data, :user_id, :author_id
  end
end
