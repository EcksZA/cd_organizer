require './lib/cd_album'
require './lib/cd_artist'

def cd_organizer
  puts "Please select from the following options"
  puts "Press 'a' to add artist, 'l' to list artists or 'x' to exit"
  user_selection = gets.chomp
  if user_selection == 'a'
    add_artist
  elsif user_selection == 'l'
    list_artists
  elsif user_selection == 'x'
    puts "Thank you and goodbye"
  else
    puts "This is not a valid entry. Please try again."
    cd_organizer
  end
end

def add_artist
  puts "Please enter the name of the artist you want to add:"
  artist_name = gets.chomp
  @artist = Artist.new(:name => artist_name)

  puts "Do you want to add an album to the artist? Enter 'y' for yes and 'n' for no:"
  add_choice = gets.chomp
  if add_choice == 'y'
    add_album
  elsif add_choice == 'n'
    cd_organizer
  else
    puts "This is not a valid input. Please try again."
    cd_organizer
  end
end

def add_album
  puts "Please enter the name of the album you want to add:"
  album_name = gets.chomp
  album = Album.new(:name => album_name)
  @artist.add_album(album)
  puts "Do you want to add another album? Enter 'y' for yes or 'n' for no"
  another_add = gets.chomp
  if another_add == 'y'
    add_album
  elsif another_add == 'n'
    cd_organizer
  else
    puts "This is not a valid input. Please try again."
    add_album
  end
end

def list_artists
  puts "list_artists"
  Artist.artists_print.each {|artist| puts artist}

  puts "\n"
  puts "Press 'a' to add a new artist or 'v' to view artist's albums"
  user_selection = gets.chomp
  if user_selection == 'a'
    add_artist
  elsif user_selection == 'v'
    puts "Type in the artist whose albums you want to view"
    user_selection2 == gets.chomp
    our_artist = Artist.find_by_name(user_selection2)
    puts our_artist.




    # puts Artist.albums
    # puts "Do you want to add an album to this list? Enter 'y' for yes or 'n' for no"
    # user_selection2 = gets.chomp
    #if user_selection3 == 'y'

  else
    puts "This is not a valid input. Please try again."
  end

end


cd_organizer

