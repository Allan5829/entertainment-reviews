luffy = User.create(username: "MonkeyDLuffy",
    email: "thenextpirateking@gmail.com",
    password: "meat",
    public: true)
luffy.save

zolo = User.create(username: "RoronoaZoro",
    email: "thebestswordsman@gmail.com",
    password: "alcohol",
    public: true)
zolo.save

sanji = User.create(username: "VinsmokeSanji",
    email: "thebestchief@gmail.com",
    password: "women",
    public: true)
sanji.save

nami = User.create(username: "CatBurgularNami",
    email: "thebestnavigator@gmail.com",
    password: "money",
    public: false)
nami.save

Review.create(type_of_media: "Book",
    name: "How to Cook Meat",
    completion: "Started",
    review_score: 1,
    review_body: "not enough meat",
    user_id: luffy.id)

Review.create(type_of_media: "Movie",
    name: "The Last Samurai",
    completion: "Completed",
    review_score: 1,
    review_body: "that guy's not the last samurai",
    user_id: zolo.id)

Review.create(type_of_media: "Tv Show",
    name: "Cooking with a Female Chief",
    completion: "Completed",
    review_score: 10,
    review_body: "insert some bad pickup line",
    user_id: sanji.id)

Review.create(type_of_media: "Book",
    name: "Best Marketing Tactics",
    completion: "Interested",
    review_score: "NA",
    review_body: "",
    user_id: nami.id)
