class AddAverageToMovies < ActiveRecord::Migration
  def change
    add_column :movies, :average, :float
  end
end
