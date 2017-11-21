class ChangeColumn < ActiveRecord::Migration[5.1]
  def change
  	rename_column :posts, :model_id, :user_id
  end
end
