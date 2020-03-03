class CreateReviewsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.integer :star_rating
      t.string :optional_description
      t.integer :movie_id
      t.integer :user_id
    end
  end
end
