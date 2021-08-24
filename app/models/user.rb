class User < ApplicationRecord
    has_many :reviews
	has_many :watch_lists
	has_many :likes 
    has_many :dislikes

    has_secure_password
    
    validates :username, presence: true, uniqueness: true
    validates :password, presence: true
end
