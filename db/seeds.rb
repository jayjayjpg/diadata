# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

if Rails.env.development? 
  host = 'http://localhost:3000'
else 
  host = 'https://diadata.herokuapp.com'
end

Char.create([
             {title: "Josh", route: "josh", url: "joshua", head_shot: host + '/images/joshheadshotcut.png', full_view: host + '/images/joshfullview.png'},
             {title: "Kim", route: "kim", url: "kim", head_shot: host + '/images/kimheadshotcut.png', full_view: host + '/images/kimfullview.png' },
             {title: "Sebastian", route: "sebastian", url: "seb", head_shot: host + '/images/sebheadshotcut.png', full_view: host + '/images/sebfullview.png'}
])

chapters = Chapter.create([{chapter_index: 1, title: "Prodromos" }])
episodes = Episode.create(title: 'Gone', chapter: chapters.first)
pages = Page.create(title: 'Page 1', episode: episodes )

panels = Panel.create(title: 'Panel 1', page: pages)




