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
5.times do
  Medium.create(title: Faker::Lorem.word, kind: Faker::Lorem.word, artist: Faker::App.author, likes: Faker::Number.between(1,30) )
  # Figure out how to make the filesources happen.
end

#create commments
5.times do
  Comment.create(content: Faker::Lorem.sentence, user_id: User.all.sample.id , medium_id: Medium.all.sample.id)
end

#create playlists
5.times do
  Playlist.create!(name: Faker::Lorem.word, medium_id: Medium.all.sample.id, user_id: User.all.sample.id)
end
