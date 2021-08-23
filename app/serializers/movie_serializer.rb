class MovieSerializer < ActiveModel::Serializer
  attributes :id, :name, :movie_type, :description, :genre, :image_url, :video_url
  has_many :reviews
end
