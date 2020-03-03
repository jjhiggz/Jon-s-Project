class AddReferencesToReviews < ActiveRecord::Migration[6.0]
  def change
    add_reference(:reviews, :user)
    add_reference(:reviews, :movie)
  end
end
