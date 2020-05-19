# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Game.create(name: 'Rune Factory 4 Special', genre: 'Role-playing (RPG)', price: 5999, release_date: Date.new(2019, 7, 25))
Game.create(name: 'Boderlands 3 ', genre: 'Simulator', price: 5999, release_date: Date.new(2019, 9, 13))

list_games = [{:name=>"Zombie Driver: Immortal Edition", :genre=>"Racing", :price=>5999, :release_date=>"2019-Jul-25"},
{:name=>"Remnant: From the Ashes", :genre=>"Shooter", :price=>6999, :release_date=>"2019-Aug-20"},
{:name=>"Monster Hunter: World - Iceborne", :genre=>"Adventure", :price=>6999, :release_date=>"2019-Sep-06"},
{:name=>"Cyberpunk 2077", :genre=>"Role-playing (RPG)", :price=>4999, :release_date=>"2020-Sep-17"},
{:name=>"Pokémon Shield", :genre=>"Role-playing (RPG)", :price=>5999, :release_date=>"2019-Nov-15"},
{:name=>"Children of Morta", :genre=>"Role-playing (RPG)", :price=>6999, :release_date=>"2019-Sep-03"} ]

list_games.each do |game|
  Game.create(game)
end
puts %Q{All games
----------}
p Game.all
puts %Q{Find game by release date
----------}
p Game.find_by(release_date: '2019-Aug-20')
puts %Q{Find first game
----------}
p Game.first
puts %Q{Find last game
----------}
p Game.last
puts %Q{All games order by release_date asc
----------}
p Game.order(release_date: :asc)
puts %Q{All games where price $59.99 (5999 cents)
----------}
p Game.where(price: 5999)
puts %Q{All games where release year is 2019
----------}
p Game.where('extract(year from release_date) = ?', '2019')