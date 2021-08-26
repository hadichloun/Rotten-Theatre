# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.destroy_all
Movie.destroy_all
Review.destroy_all

user1 = User.create(username: 'flatiron', email: 'flatiron@email.com', password: '123')
user2 = User.create(username: 'flatiron1', email: 'flatiron1@email.com', password: '123')

movie4 = Movie.create(movie_type: 'horror', image_url: "https://m.media-amazon.com/images/M/MV5BMTE2ODU4NDEtNmRjNS00OTk1LTg4NmMtNTAzYzVlNzJmYjgzXkEyXkFqcGdeQXVyODk4OTc3MTY@._V1_.jpg", video_url: "https://www.youtube.com/watch?v=9wYcZi0UblM", name: "A Quiet Place 2", description: "Following the deadly events at home, the Abbott family must now face the terrors of the outside world as they continue their fight for survival in silence. Forced to venture into the unknown, they quickly realize that the creatures that hunt by sound are not the only threats that lurk beyond the sand path.", genre: "Horror")
movie5 = Movie.create(movie_type: 'horror', image_url: "https://images-na.ssl-images-amazon.com/images/I/819U6EBvMVL._RI_.jpg", video_url: "https://www.youtube.com/watch?v=r23CN0t6uZk", name: "The Unforgiving", description: "On the outskirts of Johannesburg, a spate of killings plagues a desolate highway. With nowhere to turn and no leads, authorities focus all their attention when two survivors turn up alive.", genre: "Horror")
movie6 = Movie.create(movie_type: 'horror', image_url: "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQycWSRPNrlE6jyoFMn-pF99lTslUcnRaMqnRFMZfygt11oXTB8", video_url: "https://www.youtube.com/watch?v=NhGe2TOHo5g", name: "The Facility", description: "The Facility Full Movie. Eight volunteers find themselves fighting for their lives when a trial goes horribly wrong.", genre: "Horror")
movie7 = Movie.create(movie_type: 'horror', image_url: "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcRuy1n10wm_DWRB-AtAIusvi6oqXpvD_hVoTYjZTURPTjbpKRQd", video_url: "https://www.youtube.com/watch?v=-06vY8kmQXg", name: "Ouija 3", description: "An Eccentric haunted house owner invites a group of hapless teens to play the terrifying game known as Charlie Charlie, overnight in the many attractions his house has to offer. While the game is meant to be a mere spectacle of spooky fun, it soon turns into a true nightmare leaving the teenagers, and the owner, battling for their lives.", genre: "Horror")
movie8 = Movie.create(movie_type: 'horror', image_url: "http://www.gstatic.com/tv/thumb/movieposters/14308613/p14308613_p_v8_aa.jpg", video_url: "https://www.youtube.com/watch?v=ImYCXV2Wxio", name: "Charlotte", description: "A girl in her teens babysits for a new family when she meets a creepy doll. The doll makes her watch several gruesome tales on TV.", genre: "Horror")
movie9 = Movie.create(movie_type: 'horror', image_url: "https://m.media-amazon.com/images/I/81rJHK3W9ZL._SL1500_.jpg", video_url: "https://www.youtube.com/watch?v=r23CN0t6uZk", name: "Gates of Darkness", description: "A haunted teen endures a terrifying exorcism in the hopes of unlocking shocking secrets about the church and his family.", genre: "Horror")
movie10 = Movie.create(movie_type: 'horror', image_url: "https://m.media-amazon.com/images/M/MV5BMTc1NjM5OTI3NF5BMl5BanBnXkFtZTgwOTk3MjU3MDI@._V1_.jpg", video_url: "https://www.youtube.com/watch?v=uRI1jYnji8k", name: "Psychos", description: "When three young women receive shocking videos anonymously, a nightmare is reawakened that ignites a thirst for bloody vengeance.  They embark on a journey to locate the house, their sadistic captor and to discover the truth behind those locked doors.  But, the most shocking revelation of this chilling tale is the identities of the victims.", genre: "Horror")
movie11 = Movie.create(movie_type: 'horror', image_url: "https://m.media-amazon.com/images/M/MV5BMWIyZGFiM2UtNTgxZi00NDYwLTkwODQtYjdiODU4MDM5NzgwXkEyXkFqcGdeQXVyMzg0MzA2Nzc@._V1_.jpg", video_url: "https://www.youtube.com/watch?v=r23CN0t6uZk", name: "The Cabin", description: "A young couple visit a remote cabin in the woods but on the way meet a suspicious stranger who holds a murderous secret.", genre: "Horror")
movie12 = Movie.create(movie_type: 'horror', image_url: "https://m.media-amazon.com/images/I/91my9+3fDyL._SL1500_.jpg", video_url: "https://www.youtube.com/watch?v=6Wpr79TYHcE", name: "The Evil Nun ", description: "Catherine and her family recently moved into a converted church. Upon moving in, they have been harassed by an unknown religious stalker, claiming them to be sinners. Pamela, Catherine's grandmother soon begins to reveal she has secrets hidden to the local church, and not all is as it seems. Each night the Nun returns, and this time, she is looking to claim more than one soul.", genre: "Horror")
movie13 = Movie.create(movie_type: 'horror', image_url: "https://m.media-amazon.com/images/M/MV5BNjBlODY2YWEtNDljYi00MzdjLWEzOWQtYmNmY2VmZjhmNjA3L2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyNTA2OTM2NDE@._V1_.jpg", video_url: "https://www.youtube.com/watch?v=vcUHDckhd5o", name: "The Hospital ", description: "Every town has one. The place you warn your kids about, the place where unexplained things happen, the place that's haunted. This east Texas town is no different. Southbrook hospital sits empty and has been that way since the riot in 1986. With the sale of the property pending, the buyers want peace of mind.", genre: "Horror")
movie14 = Movie.create(movie_type: 'comedy', image_url: "https://d2e111jq13me73.cloudfront.net/sites/default/files/styles/product_image_aspect_switcher_170w/public/product-images/csm-movie/back-in-the-day-poster.jpg?itok=yqIGToCZ", video_url: "https://www.youtube.com/watch?v=8JuchpRGfNA", name: "Back In The Day", description: "Unsatisfied with his career as the face of a national ad campaign, Jim Owens heads home to Indiana for his high school reunion. Determined to relive the old days, Jim tries to rally his friends for some wild parties but in the process finds himself falling for the girl who got away.", genre: "Comedy")
movie15 = Movie.create(movie_type: 'comedy', image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRhhmQ4DFP0xkvdmyz1BCTw_EzBWVKIGLVevonXmOD4yT8D0icb", video_url: "https://www.youtube.com/watch?v=ZPTU9eABdNk", name: "Kickin' It Old Skool", description: "At a talent show in 1986, young Justin Schumacher suffers a head injury and slips into a coma. Twenty years later, Justin (Jamie Kennedy) awakes with the mindset and experience of a 12-year-old. He decides to reunite the members of his former dance team and revive their short-lived careers.", genre: "Comedy")
movie16 = Movie.create(movie_type: 'comedy', image_url: "https://3.bp.blogspot.com/-ygQ1nmP7gg8/UmAWGfaLnSI/AAAAAAAAKoU/sC101l5CfxI/s1600/3DayTestChristmas1.jpg", video_url: "https://www.youtube.com/watch?v=ppuK36u-yio&list=PLfRCZ3PuccvAx8SVK0wfxi2eTVpcxKoKn", name: "3 Day Christmas", description: "Martin Taylor (George Newbern, Father of The Bride) is suffering the frustrations of a mid-life crisis. He has lost touch with his family - unsure of his teenage daughter's friends, struggling to communicate with his techno-wizard son via an electronic sign outside his bedroom door and concerned that his youngest daughter lounges all day in her PJs watching too much church TV.", genre: "Comedy, Family")
movie17 = Movie.create(movie_type: 'comedy', image_url: "https://3.bp.blogspot.com/-ygQ1nmP7gg8/UmAWGfaLnSI/AAAAAAAAKoU/sC101l5CfxI/s1600/3DayTestChristmas1.jpg", video_url: "https://www.youtube.com/watch?v=ppuK36u-yio&list=PLfRCZ3PuccvAx8SVK0wfxi2eTVpcxKoKn", name: "3 Day Christmas", description: "Martin Taylor (George Newbern, Father of The Bride) is suffering the frustrations of a mid-life crisis. He has lost touch with his family - unsure of his teenage daughter's friends, struggling to communicate with his techno-wizard son via an electronic sign outside his bedroom door and concerned that his youngest daughter lounges all day in her PJs watching too much church TV.", genre: "Comedy, Family")
movie18 = Movie.create(movie_type: 'comedy', image_url: "https://3.bp.blogspot.com/-ygQ1nmP7gg8/UmAWGfaLnSI/AAAAAAAAKoU/sC101l5CfxI/s1600/3DayTestChristmas1.jpg", video_url: "https://www.youtube.com/watch?v=ppuK36u-yio&list=PLfRCZ3PuccvAx8SVK0wfxi2eTVpcxKoKn", name: "3 Day Christmas", description: "Martin Taylor (George Newbern, Father of The Bride) is suffering the frustrations of a mid-life crisis. He has lost touch with his family - unsure of his teenage daughter's friends, struggling to communicate with his techno-wizard son via an electronic sign outside his bedroom door and concerned that his youngest daughter lounges all day in her PJs watching too much church TV.", genre: "Comedy, Family")
movie19 = Movie.create(movie_type: 'comedy', image_url: "https://3.bp.blogspot.com/-ygQ1nmP7gg8/UmAWGfaLnSI/AAAAAAAAKoU/sC101l5CfxI/s1600/3DayTestChristmas1.jpg", video_url: "https://www.youtube.com/watch?v=ppuK36u-yio&list=PLfRCZ3PuccvAx8SVK0wfxi2eTVpcxKoKn", name: "3 Day Christmas", description: "Martin Taylor (George Newbern, Father of The Bride) is suffering the frustrations of a mid-life crisis. He has lost touch with his family - unsure of his teenage daughter's friends, struggling to communicate with his techno-wizard son via an electronic sign outside his bedroom door and concerned that his youngest daughter lounges all day in her PJs watching too much church TV.", genre: "Comedy, Family")
movie20 = Movie.create(movie_type: 'comedy', image_url: "https://3.bp.blogspot.com/-ygQ1nmP7gg8/UmAWGfaLnSI/AAAAAAAAKoU/sC101l5CfxI/s1600/3DayTestChristmas1.jpg", video_url: "https://www.youtube.com/watch?v=ppuK36u-yio&list=PLfRCZ3PuccvAx8SVK0wfxi2eTVpcxKoKn", name: "3 Day Christmas", description: "Martin Taylor (George Newbern, Father of The Bride) is suffering the frustrations of a mid-life crisis. He has lost touch with his family - unsure of his teenage daughter's friends, struggling to communicate with his techno-wizard son via an electronic sign outside his bedroom door and concerned that his youngest daughter lounges all day in her PJs watching too much church TV.", genre: "Comedy, Family")
movie21 = Movie.create(movie_type: 'comedy', image_url: "https://3.bp.blogspot.com/-ygQ1nmP7gg8/UmAWGfaLnSI/AAAAAAAAKoU/sC101l5CfxI/s1600/3DayTestChristmas1.jpg", video_url: "https://www.youtube.com/watch?v=ppuK36u-yio&list=PLfRCZ3PuccvAx8SVK0wfxi2eTVpcxKoKn", name: "3 Day Christmas", description: "Martin Taylor (George Newbern, Father of The Bride) is suffering the frustrations of a mid-life crisis. He has lost touch with his family - unsure of his teenage daughter's friends, struggling to communicate with his techno-wizard son via an electronic sign outside his bedroom door and concerned that his youngest daughter lounges all day in her PJs watching too much church TV.", genre: "Comedy, Family")
movie22= Movie.create(movie_type: 'comedy', image_url: "https://3.bp.blogspot.com/-ygQ1nmP7gg8/UmAWGfaLnSI/AAAAAAAAKoU/sC101l5CfxI/s1600/3DayTestChristmas1.jpg", video_url: "https://www.youtube.com/watch?v=ppuK36u-yio&list=PLfRCZ3PuccvAx8SVK0wfxi2eTVpcxKoKn", name: "3 Day Christmas", description: "Martin Taylor (George Newbern, Father of The Bride) is suffering the frustrations of a mid-life crisis. He has lost touch with his family - unsure of his teenage daughter's friends, struggling to communicate with his techno-wizard son via an electronic sign outside his bedroom door and concerned that his youngest daughter lounges all day in her PJs watching too much church TV.", genre: "Comedy, Family")
movie23 = Movie.create(movie_type: 'comedy', image_url: "https://3.bp.blogspot.com/-ygQ1nmP7gg8/UmAWGfaLnSI/AAAAAAAAKoU/sC101l5CfxI/s1600/3DayTestChristmas1.jpg", video_url: "https://www.youtube.com/watch?v=ppuK36u-yio&list=PLfRCZ3PuccvAx8SVK0wfxi2eTVpcxKoKn", name: "3 Day Christmas", description: "Martin Taylor (George Newbern, Father of The Bride) is suffering the frustrations of a mid-life crisis. He has lost touch with his family - unsure of his teenage daughter's friends, struggling to communicate with his techno-wizard son via an electronic sign outside his bedroom door and concerned that his youngest daughter lounges all day in her PJs watching too much church TV.", genre: "Comedy, Family")
movie24 = Movie.create(movie_type: 'comedy', image_url: "https://3.bp.blogspot.com/-ygQ1nmP7gg8/UmAWGfaLnSI/AAAAAAAAKoU/sC101l5CfxI/s1600/3DayTestChristmas1.jpg", video_url: "https://www.youtube.com/watch?v=ppuK36u-yio&list=PLfRCZ3PuccvAx8SVK0wfxi2eTVpcxKoKn", name: "3 Day Christmas", description: "Martin Taylor (George Newbern, Father of The Bride) is suffering the frustrations of a mid-life crisis. He has lost touch with his family - unsure of his teenage daughter's friends, struggling to communicate with his techno-wizard son via an electronic sign outside his bedroom door and concerned that his youngest daughter lounges all day in her PJs watching too much church TV.", genre: "Comedy, Family")
movie25 = Movie.create(movie_type: 'cartoon', image_url: "https://m.media-amazon.com/images/M/MV5BMTg5MzUxNzgxNV5BMl5BanBnXkFtZTgwMTM2NzQ3MjI@._V1_.jpg", video_url: "https://www.youtube.com/watch?v=oiwNUMHVdt0", name: "The Boss Baby", description: "A new baby's arrival impacts a family, told from the point of view of a delightfully unreliable narrator -- a wildly imaginative 7-year-old named Tim", genre: "Cartoon")
movie26 = Movie.create(movie_type: 'cartoon', image_url: "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTW98mOjMJcVW9N8iRzRtABYEeER0mfJ6gf4BJgcizttaMszlSP", video_url: "https://www.youtube.com/watch?v=JL2PB7NJ090", name: "Caroline", description: "While exploring her new home, a girl named Coraline (Dakota Fanning) discovers a secret door, behind which lies an alternate world that closely mirrors her own but, in many ways, is better..", genre: "Cartoon")
movie27 = Movie.create(movie_type: 'cartoon', image_url: "https://lumiere-a.akamaihd.net/v1/images/movie_poster_zootopia_866a1bf2.jpeg?region=0%2C0%2C300%2C450", video_url: "https://www.youtube.com/watch?v=pOS8fsP64-Y", name: "Zootopia", description: "From the largest elephant to the smallest shrew, the city of Zootopia is a mammal metropolis where various animals live and thrive. When Judy Hopps (Ginnifer Goodwin) becomes the first rabbit to join the police force, she quickly learns how tough it is to enforce the law.", genre: "Cartoon")
movie28 = Movie.create(movie_type: 'cartoon', image_url: "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcTOb-u6qhiV2WGkX43bffxIa82YOkynDdG_lENE1tQP6T7aXD5U", video_url: "https://www.youtube.com/watch?v=RcmzYlOzHoI", name: "Larva", description: "Red finally finds love, lips like cherries, adorable giggle, but it doesn’t last long.", genre: "drama")
movie29 = Movie.create(movie_type: 'cartoon', image_url: "https://i.pinimg.com/originals/a7/b1/57/a7b1572e0275b78d32f3e2fdee1dd898.jpg", video_url: "https://www.youtube.com/watch?v=HfEVEGf1A8Q", name: "Spookiz", description: "Prehistoric family the Croods live in a particularly dangerous moment in time. Patriarch Grug (Nicolas Cage), his mate, Ugga (Catherine Keener), teenage daughter Eep (Emma Stone), son Thunk (Clark Duke) and feisty Gran (Cloris Leachman) gather food by day and huddle together in a cave at night", genre: "Cartoon")
movie30 = Movie.create(movie_type: 'cartoon', image_url: "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSamR0aU70jZ6YDXyJ9zTG4aP_gYNo6fFr4sugrtWBbn-ggU1lL", video_url: "https://www.youtube.com/watch?v=zZewxkD5Htc", name: "The Croods", description: "At an elementary school in the countryside, human kids live during daytime and monster kids live during the night. The monster kids who avoid being discovered by humans make their own secret school life. One day, a human girl leaves her cellphone behind and this makes the two kinds, who should never meet, encounter each other. Can a human girl and monster be friends?", genre: "Cartoon")
movie31 = Movie.create(movie_type: 'cartoon', image_url: "https://pbs.twimg.com/media/DfYGJ1UXUAAeEOY.jpg", video_url: "https://www.youtube.com/watch?v=CW97wzNwfYM", name: "The Incredibles", description: "In this lauded Pixar animated film, married superheroes Mr. Incredible (Craig T. Nelson) and Elastigirl (Holly Hunter) are forced to assume mundane lives as Bob and Helen Parr after all super-powered activities have been banned by the government", genre: "Cartoon")
movie32 = Movie.create(movie_type: 'cartoon', image_url: "https://m.media-amazon.com/images/I/51KfR8cq8gL.jpg", video_url: "https://www.youtube.com/watch?v=YmXQ4FquFUw", name: "Unstable Fables- 3 pigs and a baby", description: "In this family-friendly CGI animated feature from The Jim Henson Company, the well known tale of The Three Little Pigs takes a new twist. When the three pigs find a tiny wolf cub on their doorstep, they decide to raise him as their own, unaware that they've played right into the plan of a special-ops team of wolves.", genre: "Cartoon")
movie33 = Movie.create(movie_type: 'cartoon', image_url: "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSr0xFpEk8JOUKZNwOtvmTVNpovHPs7o0zkGHVHYzp_5j7gV6W4", video_url: "https://www.youtube.com/watch?v=EtbW_FUoJns", name: "Peter Pan", description: "In this Disney animated film, Wendy (Kathryn Beaumont) and her two brothers are amazed when a magical boy named Peter Pan (Bobby Driscoll) flies into their bedroom, supposedly in pursuit of his rebellious shadow. He and his fairy friend, Tinkerbell, come from a far-off place called Neverland, where children stay perpetually young.", genre: "Cartoon")
movie34 = Movie.create(movie_type: 'cartoon', image_url: "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcS1fbHWtVm3Hm6F1L67QXiVbnzTQgm9v4JD3guXH3_KYIoUzCjw", video_url: "https://www.youtube.com/watch?v=Ja8TsLgOGfI", name: "The Secret of Nimh", description: "Mrs. Brisby (Elizabeth Hartman), a widowed mouse, must move her children out of their home in a field before the local farmer starts plowing. Unable to leave because her son is ill, Mrs. Brisby seeks the help of nearby rats, who have heightened intelligence after being the subjects of scientific experiments. She receives an unexpected gift from the elder rat, Nicodemus (Derek Jacobi). Soon Mrs. Brisby is caught in a conflict among the rats, jeopardizing her mission to save her family.", genre: "Cartoon")
movie35 = Movie.create(movie_type: 'drama', image_url: "https://m.media-amazon.com/images/M/MV5BMjA3NTViMzQtM2Y5NS00ZWFjLWI4NmQtNTM5NWJmNDY2MmViXkEyXkFqcGdeQXVyMDA2NDE5MQ@@._V1_.jpg", video_url: "https://www.youtube.com/watch?v=IqCiYbod_gs", name: "That Good Night", description: "That Good Night - Ralph, a once-famous screenwriter, is in his seventies and terminally ill. He has two final missions: to be reconciled to his son, Michael, and, secretly, to ensure he is not a burden to his wife, Anna, as he goes into that good night.", genre: "Drama")
movie36 = Movie.create(movie_type: 'drama', image_url: "https://m.media-amazon.com/images/I/516UEGWAzCL.jpg", video_url: "https://www.youtube.com/watch?v=CAk9vqAINCc", name: "The Messenger", description: "An American soldier struggles with an ethical dilemma when he becomes involved with a widow of a fallen officer.", genre: "drama")
movie37 = Movie.create(movie_type: 'drama', image_url: "https://images-na.ssl-images-amazon.com/images/I/81R8rWL+01L._RI_.jpg", video_url: "https://www.youtube.com/watch?v=iiBk6wleCjI", name: "Personal Effects", description: "A wrestler (Ashton Kutcher) finds romance with an older woman (Michelle Pfeiffer) while looking to punish the man who murdered his sister.", genre: "drama")
movie38 = Movie.create(movie_type: 'drama', image_url: "https://images-na.ssl-images-amazon.com/images/I/91hu1ZzkaIL._RI_.jpg", video_url: "https://www.youtube.com/watch?v=KNWQPOdRCeA", name: "Prodigal Girl ", description: "Reese is a young, aspiring writer who has her life mapped out - until she discovers that her mother left her a sizeable sum of money, presenting her with a spiritual dilemma.", genre: "drama")
movie39 = Movie.create(movie_type: 'drama', image_url: "https://m.media-amazon.com/images/M/MV5BMTU3ODczOTMwOF5BMl5BanBnXkFtZTcwNjY3NTU3OQ@@._V1_FMjpg_UX1000_.jpg", video_url: "https://www.youtube.com/watch?v=KwnxDbm6TcU", name: "Awesome", description: "The beginning of the XVIII century. Cartographer Jonathan Green makes a scientific journey from Europe to the East. After passing through Transylvania and overcoming the Carpathian Mountains, he finds himself in a village lost among impenetrable forests. ", genre: "drama")
movie40 = Movie.create(movie_type: 'drama', image_url: "https://i.ytimg.com/vi/HN2qL1FKeXk/maxresdefault.jpg", video_url: "https://www.youtube.com/watch?v=HN2qL1FKeXk", name: "The Chase", description: "When Jimmy finds a mysterious package in the trunk of his latest carjacking, he is thrust into a violent underworld of criminals, and a race against the clock to save a little girl's life." , genre: "drama")
movie41 = Movie.create(movie_type: 'drama', image_url: "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQRAxeFwNrMYvxGjHNKLpfx9nekBuTYtIxhpGBmO0IcVHW1doOE", video_url: "https://www.youtube.com/watch?v=g4vJPO3LLyA", name: "Miss Nobody  ", description: "Plucky paper pusher Sarah Jane McKinney (Leslie Bibb) lands a great promotion after innocently killing her boss, Milo Beeber (Brandon Routh), and soon she's employing her talent for treachery to scale the Judge Pharmaceuticals ladder. In this black comedy, the executives drop like flies as Sarah Jane beats a path to the confessional of Father Grisham ", genre: "drama")
movie42 = Movie.create(movie_type: 'drama', image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSu2USrJUI_1FZzJeONEe9Enj9yni9CB1suUuOrydfNdeAzASoQ", video_url: "https://www.youtube.com/watch?v=DrOxh2yn_lQ", name: "Turn The River", description: "A pool shark takes the ultimate gamble when she kidnaps her own son and flees her ex-husband.", genre: "drama")
movie43 = Movie.create(movie_type: 'drama', image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR8Hf6sjVM-YlNGMmZxAZH5NsH610ELIQS9ou91mMnG-f7J36FA", video_url: "https://www.youtube.com/watch?v=atBRGT7tKZU", name: "Alex Of Venice ", description: "When a workaholic attorney, Alex Vedder, is forced to reinvent herself after her husband suddenly leaves the family, Alex discovers her hidden vulnerability as well as her inner strength as she fights to keep her family including an aging father who still aspires to succeed as an actor, an eccentric sister and an extremely shy son, intact.", genre: "drama")
movie44 = Movie.create(movie_type: 'drama', image_url: "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSkXKp2opNa6U_LLo07y_3d_zxZ0xA80OmrdXXOO4bQkkB1Asnc", video_url: "https://www.youtube.com/watch?v=Jpiss2IjZIQ", name: "Prodigal Girl ", description: "Split is the surreal and epic journey a young woman takes to claim her own darkness so she can stop putting it into the hands of her abusive lover. When Inanna, a young actress, becomes obsessed with a mask maker, she sacrifices parts of her life in order to win his love. ", genre: "drama")
movie45 = Movie.create(movie_type: 'superhero', image_url: "https://m.media-amazon.com/images/M/MV5BMGFmZTFhYjktMmYyZi00ZmE4LWI0NGEtMDY2MGEzMDY0YjdiXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_FMjpg_UX1000_.jpg", video_url: "https://www.youtube.com/watch?v=s9mIQW9Ohlk", name: "Teen Wolf", description: "A teenage boy's incredible werewolf powers improve the quality of his life in dramatic and hilarious ways.", genre: "Super Hero")
movie46 = Movie.create(movie_type: 'superhero', image_url: "https://m.media-amazon.com/images/M/MV5BMTc0Njc1MTU5Nl5BMl5BanBnXkFtZTcwMjA4NDE2MQ@@._V1_FMjpg_UX1000_.jpg", video_url: "https://www.youtube.com/watch?v=3BnXz-7-y-o", name: "SuperHero", description: "After a bite from a genetically altered insect gives him superhuman abilities, teenage loser Rick Riker (Drake Bell) decides to use his powers for good. Donning an uncomfortably tight costume, Rick becomes a mysterious crime fighter known as The Dragonfly.", genre: "Super Hero")
movie47 = Movie.create(movie_type: 'superhero', image_url: "https://upload.wikimedia.org/wikipedia/en/b/b0/Wonder_Woman_%282017_film%29_poster.jpg", video_url: "https://www.youtube.com/watch?v=YYtw_HHDX08", name: "Wonder Woman", description: "Before she was Wonder Woman (Gal Gadot), she was Diana, princess of the Amazons, trained to be an unconquerable warrior. Raised on a sheltered island paradise, Diana meets an American pilot (Chris Pine) who tells her about the massive conflict that's raging in the outside world.", genre: "Super Hero")

movie48 = Movie.create(movie_type: 'superhero', image_url: "https://m.media-amazon.com/images/M/MV5BZDEyN2NhMjgtMjdhNi00MmNlLWE5YTgtZGE4MzNjMTRlMGEwXkEyXkFqcGdeQXVyNDUyOTg3Njg@._V1_FMjpg_UX1000_.jpg", video_url: "https://www.youtube.com/watch?v=Khta-vcq35E", name: "Spider Man", description: "When a failed nuclear fusion experiment results in an explosion that kills his wife, Dr. Otto Octavius (Alfred Molina) is transformed into Dr. Octopus, a cyborg with deadly metal tentacles.", genre: "Super Hero")
movie49 = Movie.create(movie_type: 'superhero', image_url: "https://m.media-amazon.com/images/M/MV5BM2Q5MjY1ZGQtZjY2My00NTg5LWIzZGYtY2E4MzgxYzQ0MjYwXkEyXkFqcGdeQXVyNzEzNjU1NDg@._V1_.jpg", video_url: "https://www.youtube.com/watch?v=YYtw_HHDX08", name: "Wonder Woman", description: "Before she was Wonder Woman (Gal Gadot), she was Diana, princess of the Amazons, trained to be an unconquerable warrior. Raised on a sheltered island paradise, Diana meets an American pilot (Chris Pine) who tells her about the massive conflict that's raging in the outside world.", genre: "Super Hero")
movie50 = Movie.create(movie_type: 'superhero', image_url: "https://batman-on-film.com/wp-content/uploads/2019/10/2_EO-Batman-RP-JR-e1575916099713.png", video_url: "https://www.youtube.com/watch?v=YYtw_HHDX08", name: "Wonder Woman", description: "Before she was Wonder Woman (Gal Gadot), she was Diana, princess of the Amazons, trained to be an unconquerable warrior. Raised on a sheltered island paradise, Diana meets an American pilot (Chris Pine) who tells her about the massive conflict that's raging in the outside world.", genre: "Super Hero")
movie51 = Movie.create(movie_type: 'superhero', image_url: "https://mk0movieguide99l7786.kinstacdn.com/wp-content/uploads/2012/08/10366.jpg", video_url: "https://www.youtube.com/watch?v=YYtw_HHDX08", name: "Wonder Woman", description: "Before she was Wonder Woman (Gal Gadot), she was Diana, princess of the Amazons, trained to be an unconquerable warrior. Raised on a sheltered island paradise, Diana meets an American pilot (Chris Pine) who tells her about the massive conflict that's raging in the outside world.", genre: "Super Hero")
movie52 = Movie.create(movie_type: 'superhero', image_url: "https://m.media-amazon.com/images/M/MV5BNzY2ZDQ2MTctYzlhOC00MWJhLTgxMmItMDgzNDQwMDdhOWI2XkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_.jpg", video_url: "https://www.youtube.com/watch?v=YYtw_HHDX08", name: "Wonder Woman", description: "Before she was Wonder Woman (Gal Gadot), she was Diana, princess of the Amazons, trained to be an unconquerable warrior. Raised on a sheltered island paradise, Diana meets an American pilot (Chris Pine) who tells her about the massive conflict that's raging in the outside world.", genre: "Super Hero")
movie53 = Movie.create(movie_type: 'superhero', image_url: "https://images-na.ssl-images-amazon.com/images/I/91c9guEXJtL._RI_.jpg", video_url: "https://www.youtube.com/watch?v=YYtw_HHDX08", name: "Wonder Woman", description: "Before she was Wonder Woman (Gal Gadot), she was Diana, princess of the Amazons, trained to be an unconquerable warrior. Raised on a sheltered island paradise, Diana meets an American pilot (Chris Pine) who tells her about the massive conflict that's raging in the outside world.", genre: "Super Hero")
movie54 = Movie.create(movie_type: 'superhero', image_url: "http://4.bp.blogspot.com/_O3F0fH5AGXQ/RmdFLjgI2rI/AAAAAAAABOY/R4UjllnvQZ4/w1200-h630-p-k-no-nu/TC.png", video_url: "https://www.youtube.com/watch?v=YYtw_HHDX08", name: "Wonder Woman", description: "Before she was Wonder Woman (Gal Gadot), she was Diana, princess of the Amazons, trained to be an unconquerable warrior. Raised on a sheltered island paradise, Diana meets an American pilot (Chris Pine) who tells her about the massive conflict that's raging in the outside world.", genre: "Super Hero")






movie1.reviews.create(user_id: user1.id, comment: 'its a great movie')
movie1.reviews.create(user_id: user1.id, comment: 'its an amazing movie')
movie1.reviews.create(user_id: user1.id, comment: 'its a great awesome moview')
movie1.reviews.create(user_id: user1.id, comment: 'this movie sucks')
movie1.reviews.create(user_id: user1.id, comment: 'not too bad')
movie1.reviews.create(user_id: user1.id, comment: 'fell asleep')
