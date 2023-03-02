require_relative 'lib/database_connection'
require_relative 'lib/album_repository'

# We need to give the database name to the method `connect`.
DatabaseConnection.connect('music_library')

album_repository = AlbumRepository.new

album_repository.all.each do |album|
  p album
end

album = album_repository.find(3)
id = album.id
title = album.title
release_year = album.release_year
artist_id = album.artist_id
puts "#{id} - #{title} - #{release_year} - #{artist_id}"