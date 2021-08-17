class MovieSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :genre, :image_url, :video_url
  has_many :reviews
end
