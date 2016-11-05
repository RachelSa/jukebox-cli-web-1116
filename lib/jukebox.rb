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
songs.each_with_index { |val,index| puts "#{index+1}. #{val}" }
end

def play(songs)
  puts "Please enter a song name or number:"
  response = gets.chomp
  nums = "123456789"
  if nums.include?(response) || songs.include?(response)
  	if response.length == 1
  		puts "Playing #{songs[response.to_i - 1]}"
  	else puts "Playing #{response}"
  	 end
  else puts "Invalid input, please try again"

  end
end

def exit_jukebox
  puts "Goodbye"

end


def run(songs)
  help
  puts "Please enter a command:"
  command = gets.chomp
	until command == "exit"
    if command == "list"
      list(songs)
      puts "Please enter a command:"
      command = gets.chomp
    elsif command == "play"
      play(songs)
      puts "Please enter a command:"
      command = gets.chomp
    elsif command == "help"
      help
      puts "Please enter a command:"
      command = gets.chomp
    end

  end
  exit_jukebox
end
