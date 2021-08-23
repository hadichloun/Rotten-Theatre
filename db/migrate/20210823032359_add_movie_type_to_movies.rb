class AddMovieTypeToMovies < ActiveRecord::Migration[6.1]
  def change
    add_column :movies, :movie_type, :string
  end
end
