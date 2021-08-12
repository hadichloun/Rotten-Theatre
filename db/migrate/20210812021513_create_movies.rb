class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.string :name
      t.string :description
      t.string :genre
      t.string :image_url
      t.string :video_url

      t.timestamps
    end
  end
end
