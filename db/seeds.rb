# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Char.create([{title: "Josh", route: "josh", url: "joshua"},{title: "Kim", route: "kim", url: "kim"}])

chapters = Chapter.create([{chapter_index: 1, title: "Prodromos" }])
episodes = Episode.create(title: 'Gone', chapter: chapters.first)
pages = Page.create(title: 'Page 1', episode: episodes )

panels = Panel.create(title: 'Panel 1', page: pages)




