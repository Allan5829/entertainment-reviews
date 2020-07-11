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
