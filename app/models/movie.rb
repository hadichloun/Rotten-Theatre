class Movie < ApplicationRecord
    has_many :reviews
	has_many :watch_lists
	has_many :likes 
    has_many :dislikes
    has_many :ratings

    def rating
        ratings.last&.rating
    end

    MOVIE_TYPES = { 
        'superhero' => 'Super Hero',
        'horror' => 'Horror',
        'comedy' => 'Comedy',
        'drama' => 'Drama',
        'cartoon' => 'Cartoon',
    }

    enum movie_type: MOVIE_TYPES
end
