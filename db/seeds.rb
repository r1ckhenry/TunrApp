# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Genre.delete_all
Album.delete_all
Song.delete_all

g1 = Genre.create(name: 'Rock')
g2 = Genre.create(name: 'Pop')
g3 = Genre.create(name: 'Folk')
g4 = Genre.create(name: 'Electro')

s1 = Song.create(title: 'Hit Song 1')
s2 = Song.create(title: 'Title 2')
s3 = Song.create(title: 'Song 3')
s4 = Song.create(title: 'H5')

a1 = g1.albums.create(title: 'Scottish Songs')
a2 = g2.albums.create(title: 'Now 35')
a3 = g3.albums.create(title: 'Best of...')
a4 = g4.albums.create(title: 'Scottish Songs')

a1.album_songs.create(song_id: s1.id)
a1.album_songs.create(song_id: s2.id)
a1.album_songs.create(song_id: s3.id)

a2.album_songs.create(song_id: s3.id)
a2.album_songs.create(song_id: s4.id)
a2.album_songs.create(song_id: s1.id)

a3.album_songs.create(song_id: s2.id)
a3.album_songs.create(song_id: s3.id)
a3.album_songs.create(song_id: s4.id)



# a1 = g1.albums.create(name:'The Ultimate Pop Album')
