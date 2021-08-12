# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

* reactplayer npm package

•	Users
Attributes:  username(string), password, email(string)
o	Has many reviews
o	Has many watch_lists
o	Has many likes or dislikes
•	movies
Attributes: name, description,  genre (enum  string), image_url(string), video_url (string)
o	Has many reviews
o	Has many watch_list
o	Has_many likes
o	Has_many dislike
•	reviews
Attributes: rating(enum intenger), description,
o	Belongs to user
o	Belongs to movie
•	watchlist
Attributes: user_id(integner) movie_id(integer)
o	Belongs to user
o	 Belongs to movie
o	
o	
o	
o	Like model
o	Belongs to user
o	Belongs movie

o	Dislike model
o	Belongs to user
o	Belongs movie

