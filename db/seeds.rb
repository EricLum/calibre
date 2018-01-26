# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

User.destroy_all
Medium.destroy_all
Playlist.destroy_all
Comment.destroy_all
#create users
5.times do
  User.create(username: Faker::Name.name, theme: 'default')
end

#create media
  Medium.create!(kind: "video", title: "DEVELOPERS ", artist: "Steve Ballmer", likes: rand(1..20), filesource: "Media/developers.mp4")
  Medium.create!(kind: "video", title: "Android Wireless Earbuds ", artist: "MKB HD", likes: rand(1..20), filesource: "Media/airpod.mp4")
  Medium.create!(kind: "video", title: "Wanderland" , artist: "Hermanos Inglesos", likes: rand(1..20), filesource: "Media/wanderland.mp4")
  Medium.create!(kind: "video", title: "Cat Maze ", artist: "Cole and Marmalade", likes: rand(1..20), filesource: "Media/cat-maze.mp4")
  Medium.create!(kind: "video", title: "Talking Babies ", artist: "jayrandall22011", likes: rand(1..20), filesource: "Media/baby.mp4")
  Medium.create!(kind: "video", title: "Community - Halloween ", artist: "Community NBC", likes: rand(1..20), filesource: "Media/CommunityHalloween.mp4")
  Medium.create!(kind: "video", title: "Community - Dean ", artist: "Community NBC", likes: rand(1..20), filesource: "Media/CommunityDean.mp4")
  Medium.create!(kind: "video", title: "Community - Biblioteca ", artist: "Community NBC", likes: rand(1..20), filesource: "Media/CommunityBiblioteca.mp4")
  Medium.create!(kind: "video", title: "Community - Darkest Timeline ", artist: "Community NBC", likes: rand(1..20), filesource: "Media/CommunityTimeline.mp4")
  Medium.create!(kind: "video", title: "Spongebob Wallet ", artist: "Cartoon people", likes: rand(1..20), filesource: "Media/wallet.mp4")
  Medium.create!(kind: "video", title: "Spogebob Texas ", artist: "Cartoon people", likes: rand(1..20), filesource: "Media/texas.mp4")
  Medium.create!(kind: "video", title: "Calibre Tour ", artist: "Calibre Dev Team", likes: rand(1..20), filesource: "Media/rick.mp4")
  Medium.create!(kind: "video", title: "Pepe Silva ", artist: "FX", likes: rand(1..20), filesource: "Media/silva.mp4")
  Medium.create!(kind: "video", title: "Avengers ", artist: "Marvel", likes: rand(1..20), filesource: "Media/marvel.mp4")

  Medium.create!(kind: "audio", title: 'Jazz Comedy ', artist: "bensounds.com", likes: rand(1..20), filesource: "Media/JazzComedy.mp3")
  Medium.create!(kind: "audio", title: "Jazzy French ", artist: "bensounds.com", likes: rand(1..20), filesource: "Media/JazzyFrench.mp3")
  Medium.create!(kind: "audio", title: "Memories ", artist: "Bensound", likes: rand(1..20), filesource: "Media/memories.mp3")
  Medium.create!(kind: "audio", title: "Happy Rock ", artist: "Bensound", likes: rand(1..20), filesource: "Media/rock.mp3")
  Medium.create!(kind: "audio", title: "Going Higher ", artist: "Bensound", likes: rand(1..20), filesource: "Media/higher.mp3")
  Medium.create!(kind: "audio", title: "Billie Jean ", artist: "Michael Jackson", likes: rand(1..20), filesource: "Media/jean.mp3")
  Medium.create!(kind: "audio", title: "The Lazy Song ", artist: "Bruno Mars", likes: rand(1..20), filesource: "Media/lazy.mp3")

#create commments
Medium.all.each do |medium|
  rand(5..20).times do
    Comment.create(content: Faker::Lorem.sentence, user_id: User.all.sample.id , medium_id: medium.id)
  end
end


#create playlists
5.times do
  Playlist.create!(name: Faker::Lorem.word, medium_id: Medium.all.sample.id, user_id: User.all.sample.id)
end
