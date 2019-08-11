require "pry"
songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index { |song, index|
    puts "#{index + 1}. #{song}"
  }
end

def play(songs)
  puts "Please enter a song name or number:"
  users_response = gets.strip

  if songs.include?(users_response)
    puts "Playing #{users_response}"
  else
    index = users_response.to_i - 1
    num_of_songs = songs.length

    if (0..num_of_songs).cover?(index)
      puts "Playing #{songs[index]}"
    else
      puts "Invalid input, please try again"
    end
  end

end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  puts "Please enter a command:"
  user_input = gets.strip
  until user_input == "exit"
    case user_input
    when "list"
      list(songs)
      puts "Please enter a command:"
      user_input = gets.strip
    when "play"
      play(songs)
      puts "Please enter a command:"
      user_input = gets.strip
    when "help"
      help
      puts "Please enter a command:"
      user_input = gets.strip
    else
      help
      puts "Please enter a command:"
      user_input = gets.strip
    end
  end
  exit_jukebox

end
