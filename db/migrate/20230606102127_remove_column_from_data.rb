class RemoveColumnFromData < ActiveRecord::Migration[7.0]
  def change
    remove_column :data, :author_id, :integer
  end
end
