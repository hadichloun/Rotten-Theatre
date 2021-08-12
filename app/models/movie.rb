class Movie < ApplicationRecord
    has_many :reviews
	has_many :watch_lists
	has_many :likes 
    has_many :dislikes
end
