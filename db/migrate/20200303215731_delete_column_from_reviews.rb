class DeleteColumnFromReviews < ActiveRecord::Migration[6.0]
  def change
    remove_column :reviews, :movie_id
    remove_column :reviews, :user_id 
  end
end
