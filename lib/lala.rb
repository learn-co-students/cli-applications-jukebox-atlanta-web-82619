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

songs_w_index =

new_songs = []

p "Phoenix - 1901".split(" - ")

def run(songs)
  help
  loop do
    puts "Please enter a command:"
    input = gets.chomp
    case input
    when 'play'
      play(songs)
    when 'help'
      help
    when 'list'
      list(songs)
    when 'exit'
      break
    end
  end
  exit_jukebox
end
