class AddForeignKeys < ActiveRecord::Migration[6.0]
  def change
    add_reference :reviews, :user, index: true
    add_reference :reviews, :movie, index: true
    add_foreign_key :reviews, :movies
    add_foreign_key :reviews, :users
  end
end
