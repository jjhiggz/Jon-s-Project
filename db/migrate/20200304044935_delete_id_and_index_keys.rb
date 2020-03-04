class DeleteIdAndIndexKeys < ActiveRecord::Migration[6.0]
  def change
    remove_column :reviews, :user_id
    remove_column :reviews, :movie_id
  end
end
