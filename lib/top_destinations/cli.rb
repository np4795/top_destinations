class TopDestinations::CLI
  
  def call 
    puts "Welcome to the land of tropical island facts, brought to you by 'Banana Blammah Islands, quench your thirst for Island Living!'™"
    get_dest
    list_dests
    get_user_dest
    go_on
  end 
  
  def get_dest 
    @dests = ['A', 'B','C', 'D']
  end 
    
  def list_dests
    puts ""
    puts "Which destination would you like to see a photo and interesting facts for?"
    @dests.each_with_index(1) do |dest, index| 
      puts "#{index}. #{dest}"
    end 
  end   
    
    
  def get_user_dest
    chosen_dest = gets.strip.to_i
    show_dest_for(chosen_dest) if valid_input(chosen_dest, @dests)
  end 
  
  def valid_input(input, data)
    input.to_i <= data.length && input.to_i > 0
    end 
  end 
  
  def show_dest_for(chosen_dest)
    dest = @dests(chosen_dest - 1)
    puts ""
    puts"Your Destination, #{dest}"
  end   
    
  def go_on  
    puts ""
    puts "Contact us for the best travel experience there is! Would you like to see a different destination? Please enter Y or N"

    input = gets.strip.downcase
    if input == "y"
      start
    elsif input == "n"
      puts ""
      puts "Contact us, we look forward to making your Banana Blammah traveling dreams come true!"
      exit
    else
      puts ""
      puts "Sorry, I don't understand that answer."
      start
    end
  end   
  
  
  #def print_dest(destination)
 #  puts ""
  #  puts "----------- #{destination.name} -----------"
 #   puts ""
  #  puts "Image Link:  #{destination.image_url}"
  #  puts ""
  #  puts "---------------Description-----------------"
  #  puts ""
  #  puts " Description: #{destination.descrip}"
  #  puts ""
  #  puts "---------------Fun Facts-------------------"
  #  puts ""
   # puts "Fun Facts:  #{destination.facts}"
   # puts ""
  #end
  
  

end   