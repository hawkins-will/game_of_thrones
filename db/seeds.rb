# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

House.destroy_all
Character.destroy_all

arryn = House.create(name: "Arryn", sigil_url: "http://vignette4.wikia.nocookie.net/gameofthrones/images/1/15/House-Arryn-Main-Shield.PNG/revision/latest?cb=20170101094153", words: "As High as Honor")
frey = House.create(name: "Frey", sigil_url: "http://vignette1.wikia.nocookie.net/gameofthrones/images/e/e6/House-Frey-Main-Shield.PNG/revision/latest?cb=20160312124244", words: "We Stand Together")
greyjoy = House.create(name: "", sigil_url: "", words: "")
lannister = House.create()
stark = House.create()
tyrell = House.create()
targaryen = House.create()
tully = House.create()
martell = House.create()
baratheon = House.create()
martell = House.create()
bolton = House.create()
watch = House.create()

lysa = arryn.characters.create(name: "Lysa Tully", gender: "female", img_url: "http://vignette3.wikia.nocookie.net/gameofthrones/images/4/46/LysaArryn.png/revision/latest?cb=20140523133128", status: "deceased")
robin = arryn.characters.create(name: "Robin Arryn", gender: "male", img_url: "http://vignette4.wikia.nocookie.net/gameofthrones/images/7/74/Robin_Aaryn_Book_of_Stranger.jpg/revision/latest?cb=20160714005525", status: "Alive")


characters.create(name: "", gender: "", img_url: "", status: "")
