# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.destroy_all
Movie.destroy_all
# Review.destroy_all

user1 = User.create(username: 'flatiron', email: 'flatiron@email.com', password: '123')
user2 = User.create(username: 'flatiron1', email: 'flatiron1@email.com', password: '123')

movie1 = Movie.create(movie_type: 'superhero', image_url: "https://i.ytimg.com/vi/DQ6Ncovb8vc/maxresdefault.jpg", video_url: "https://www.youtube.com/watch?v=DQ6Ncovb8vc", name: "Soldier Boy", description: "This feature film is based on the true story of a six-year-old boy, Russia's youngest hero of World War II. Seryozha Aleshkov lost his family, was rescued by an army regiment, and engaged in battles. The little soldier was awarded the Military Merit Medal. Tragedy and love, danger and hope, the bitterness of separation and the joy of belonging, are all intertwined in this wartime drama.", genre: "Drama")
movie2 = Movie.create(movie_type: 'superhero', image_url: "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcSOcT8O6O9E1MQXaJqMuJO3XntN-qFfcDVwqol3SamISyBLPB92", video_url: "https://www.youtube.com/watch?v=-Vy-UJeLxPA", name: "Silent Retreat", description: "Six members of a media company go on a weekend business retreat at an isolated lodge in the woods. When one of the members goes missing, they discover that the lodge was formerly a private mental institution. One by one, they fall victim to the dark secrets buried at the lodge.", genre: "Horror")
movie3 = Movie.create(movie_type: 'superhero', image_url: "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcTkqNUFioUz9WM4bLtLM81VjlkEZcnmHy_plESRwO7n-B5vqGyz", video_url: "https://www.youtube.com/watch?v=DfMPAPdFEjE", name: "Forever Mine", description: "It seemed harmless and fun, the affair between Alan and Ella at the resort where he was working. No level of passion on their part could erase the fact that Mark, her husband, has sworn vengeance on Ella.", genre: "romance")
movie4 = Movie.create(movie_type: 'horror', image_url: "https://m.media-amazon.com/images/I/516UEGWAzCL.jpg", video_url: "https://www.youtube.com/watch?v=CAk9vqAINCc", name: "The Messenger", description: "An American soldier struggles with an ethical dilemma when he becomes involved with a widow of a fallen officer.", genre: "drama")
movie5 = Movie.create(movie_type: 'horror', image_url: "https://m.media-amazon.com/images/M/MV5BMjI4MzM4OTY3MF5BMl5BanBnXkFtZTcwOTMzMjI3NA@@._V1_.jpg", video_url: "https://www.youtube.com/watch?v=Doo3UivJhtc", name: "Henry's Crime", description: "After having survived three years in prison for a bank robbery he did not commit, an amiable, but aimless man, played by Keanu Reeves, decides to rob the bank for real.", genre: "Comedy, Crime, Drama")
movie6 = Movie.create(movie_type: 'comedy', image_url: "https://d2e111jq13me73.cloudfront.net/sites/default/files/styles/product_image_aspect_switcher_170w/public/product-images/csm-movie/back-in-the-day-poster.jpg?itok=yqIGToCZ", video_url: "https://www.youtube.com/watch?v=8JuchpRGfNA", name: "Back In The Day", description: "Unsatisfied with his career as the face of a national ad campaign, Jim Owens heads home to Indiana for his high school reunion. Determined to relive the old days, Jim tries to rally his friends for some wild parties but in the process finds himself falling for the girl who got away.", genre: "Comedy")
movie7 = Movie.create(movie_type: 'comedy', image_url: "https://m.media-amazon.com/images/M/MV5BMTU1OTYyNDE4MF5BMl5BanBnXkFtZTcwNzM3ODQzNA@@._V1_.jpg", video_url: "https://www.youtube.com/watch?v=wTURm5YtFO0", name: "Good for Nothing ", description: "A young English woman is immigrating to her uncle's ranch - but is kidnapped on the way by a rugged outlaw who discovers a problem he never knew he had - leading them on a wild ride across the West.", genre: "Western")
movie8 = Movie.create(movie_type: 'comedy', image_url: "https://3.bp.blogspot.com/-ygQ1nmP7gg8/UmAWGfaLnSI/AAAAAAAAKoU/sC101l5CfxI/s1600/3DayTestChristmas1.jpg", video_url: "https://www.youtube.com/watch?v=ppuK36u-yio&list=PLfRCZ3PuccvAx8SVK0wfxi2eTVpcxKoKn", name: "3 Day Christmas", description: "Martin Taylor (George Newbern, Father of The Bride) is suffering the frustrations of a mid-life crisis. He has lost touch with his family - unsure of his teenage daughter's friends, struggling to communicate with his techno-wizard son via an electronic sign outside his bedroom door and concerned that his youngest daughter lounges all day in her PJs watching too much church TV.", genre: "Comedy, Family")
movie9 = Movie.create(movie_type: 'drama', image_url: "https://m.media-amazon.com/images/M/MV5BMjA3NTViMzQtM2Y5NS00ZWFjLWI4NmQtNTM5NWJmNDY2MmViXkEyXkFqcGdeQXVyMDA2NDE5MQ@@._V1_.jpg", video_url: "https://www.youtube.com/watch?v=IqCiYbod_gs", name: "That Good Night", description: "That Good Night - Ralph, a once-famous screenwriter, is in his seventies and terminally ill. He has two final missions: to be reconciled to his son, Michael, and, secretly, to ensure he is not a burden to his wife, Anna, as he goes into that good night.", genre: "Drama")
movie10 = Movie.create(movie_type: 'drama', image_url: "https://m.media-amazon.com/images/I/516UEGWAzCL.jpg", video_url: "https://www.youtube.com/watch?v=CAk9vqAINCc", name: "The Messenger", description: "An American soldier struggles with an ethical dilemma when he becomes involved with a widow of a fallen officer.", genre: "drama")
movie11 = Movie.create(movie_type: 'drama', image_url: "https://m.media-amazon.com/images/I/516UEGWAzCL.jpg", video_url: "https://www.youtube.com/watch?v=CAk9vqAINCc", name: "The Messenger", description: "An American soldier struggles with an ethical dilemma when he becomes involved with a widow of a fallen officer.", genre: "drama")
movie12 = Movie.create(movie_type: 'drama', image_url: "https://m.media-amazon.com/images/I/516UEGWAzCL.jpg", video_url: "https://www.youtube.com/watch?v=CAk9vqAINCc", name: "The Messenger", description: "An American soldier struggles with an ethical dilemma when he becomes involved with a widow of a fallen officer.", genre: "drama")
movie13 = Movie.create(movie_type: 'cartoon', image_url: "https://m.media-amazon.com/images/I/516UEGWAzCL.jpg", video_url: "https://www.youtube.com/watch?v=CAk9vqAINCc", name: "The Messenger", description: "An American soldier struggles with an ethical dilemma when he becomes involved with a widow of a fallen officer.", genre: "drama")
movie14 = Movie.create(movie_type: 'cartoon', image_url: "https://m.media-amazon.com/images/I/516UEGWAzCL.jpg", video_url: "https://www.youtube.com/watch?v=CAk9vqAINCc", name: "The Messenger", description: "An American soldier struggles with an ethical dilemma when he becomes involved with a widow of a fallen officer.", genre: "drama")
movie15 = Movie.create(movie_type: 'cartoon', image_url: "https://m.media-amazon.com/images/I/516UEGWAzCL.jpg", video_url: "https://www.youtube.com/watch?v=CAk9vqAINCc", name: "The Messenger", description: "An American soldier struggles with an ethical dilemma when he becomes involved with a widow of a fallen officer.", genre: "drama")
movie16 = Movie.create(movie_type: 'cartoon', image_url: "https://m.media-amazon.com/images/I/516UEGWAzCL.jpg", video_url: "https://www.youtube.com/watch?v=CAk9vqAINCc", name: "The Messenger", description: "An American soldier struggles with an ethical dilemma when he becomes involved with a widow of a fallen officer.", genre: "drama")
movie17 = Movie.create(movie_type: 'cartoon', image_url: "https://m.media-amazon.com/images/I/516UEGWAzCL.jpg", video_url: "https://www.youtube.com/watch?v=CAk9vqAINCc", name: "The Messenger", description: "An American soldier struggles with an ethical dilemma when he becomes involved with a widow of a fallen officer.", genre: "drama")


# movie10 = Movie.create(image_url: "MplESRwO7n-B5vqGyz", video_url: "https://www.yov=DfMPAPdFEjE", name: "Forever Mine", description: "jdsfffffffjsfdjdfjdjsfjsfd.", genre: "romance")
# movie11 = Movie.create(image_url: "MplESRwO7n-B5vqGyz", video_url: "https://www.yov=DfMPAPdFEjE", name: "Forever Mine", description: "jdsfffffffjsfdjdfjdjsfjsfd.", genre: "romance")
# movie12 = Movie.create(image_url: "MplESRwO7n-B5vqGyz", video_url: "https://www.yov=DfMPAPdFEjE", name: "Forever Mine", description: "jdsfffffffjsfdjdfjdjsfjsfd.", genre: "romance")
# movie13 = Movie.create(image_url: "MplESRwO7n-B5vqGyz", video_url: "https://www.yov=DfMPAPdFEjE", name: "Forever Mine", description: "jdsfffffffjsfdjdfjdjsfjsfd.", genre: "romance")
# movie14 = Movie.create(image_url: "MplESRwO7n-B5vqGyz", video_url: "https://www.yov=DfMPAPdFEjE", name: "Forever Mine", description: "jdsfffffffjsfdjdfjdjsfjsfd.", genre: "romance")
# movie15 = Movie.create(image_url: "MplESRwO7n-B5vqGyz", video_url: "https://www.yov=DfMPAPdFEjE", name: "Forever Mine", description: "jdsfffffffjsfdjdfjdjsfjsfd.", genre: "romance")
# movi16 = Movie.create(image_url: "MplESRwO7n-B5vqGyz", video_url: "https://www.yov=DfMPAPdFEjE", name: "Forever Mine", description: "jdsfffffffjsfdjdfjdjsfjsfd.", genre: "romance")
# movie17 = Movie.create(image_url: "MplESRwO7n-B5vqGyz", video_url: "https://www.yov=DfMPAPdFEjE", name: "Forever Mine", description: "jdsfffffffjsfdjdfjdjsfjsfd.", genre: "romance")
# movie18= Movie.create(image_url: "MplESRwO7n-B5vqGyz", video_url: "https://www.yov=DfMPAPdFEjE", name: "Forever Mine", description: "jdsfffffffjsfdjdfjdjsfjsfd.", genre: "romance")
# movie19 = Movie.create(image_url: "MplESRwO7n-B5vqGyz", video_url: "https://www.yov=DfMPAPdFEjE", name: "Forever Mine", description: "jdsfffffffjsfdjdfjdjsfjsfd.", genre: "romance")
# movie20 = Movie.create(image_url: "MplESRwO7n-B5vqGyz", video_url: "https://www.yov=DfMPAPdFEjE", name: "Forever Mine", description: "jdsfffffffjsfdjdfjdjsfjsfd.", genre: "romance")


# user1.likes.create(movie: movie1) # user1 likes movie1, it will create a like for user1 and movie1
# user2.likes.create(movie: movie1)
# user1.likes.count
# movie1.likes.count

movie1.reviews.create(user_id: user1.id, comment: 'its a great movie')
movie1.reviews.create(user_id: user1.id, comment: 'its an amazing movie')
movie1.reviews.create(user_id: user1.id, comment: 'its a great awesome moview')
movie1.reviews.create(user_id: user1.id, comment: 'this movie sucks')
movie1.reviews.create(user_id: user1.id, comment: 'not too bad')
movie1.reviews.create(user_id: user1.id, comment: 'fell asleep')
