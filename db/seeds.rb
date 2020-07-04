luffy = User.create(username: "Luffy",
    email: "nextpirateking@gmail.com",
    password: "meat",
    public: true)

zolo = User.create(username: "Zoro",
    email: "bestswordsman@gmail.com",
    password: "alcohol",
    public: true)

sanji = User.create(username: "Sanji",
    email: "bestchief@gmail.com",
    password: "women",
    public: true)

nami = User.create(username: "Nami",
    email: "bestnavigator@gmail.com",
    password: "money",
    public: false)

Review.create(type_of_media: "Book",
    name: "How to Cook Meat",
    completion: "Started",
    review_score: 1,
    review_body: "not enough meat",
    user_id: luffy)

Review.create(type_of_media: "Movie",
    name: "The Last Samurai",
    completion: "Completed",
    review_score: 1,
    review_body: "that guy's not the last samurai",
    user_id: zolo)

Review.create(type_of_media: "Tv Show",
    name: "Cooking with a Female Chief",
    completion: "Completed",
    review_score: 10,
    review_body: "insert some bad pickup line",
    user_id: sanji)

Review.create(type_of_media: "Book",
    name: "Best Marketing Tactics",
    completion: "Interested",
    review_score: "NA",
    review_body: "",
    user_id: nami)
