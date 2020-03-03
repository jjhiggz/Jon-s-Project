class CreateMoviesTable < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.integer :year_released
      t.string :pg_rating
      t.integer :runtime
      t.string :genre
    end
  end
end
