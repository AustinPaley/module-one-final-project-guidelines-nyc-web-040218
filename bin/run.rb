require_relative '../config/environment'
require 'pry'


#Equipment.types_catalog
# Monster.sizes
#Monster.generate_random_monsters
# Equipment.types

def run
  puts "

  #
  #  @@@@@@@     @@@@@      @@@@@@@       @@@@@@   @@@  @@@   @@@@@@   @@@@@@@   @@@@@@@   @@@@@@@  @@@  @@@  @@@@@@@
  #  @@@@@@@@   @@@@@@@     @@@@@@@@     @@@@@@@   @@@  @@@  @@@@@@@@  @@@@@@@@  @@@@@@@  @@@@@@@@  @@@  @@@  @@@@@@@
  #  @@!  @@@  @@!   @@@    @@!  @@@     !@@       @@!  @@@  @@!  @@@  @@!  @@@    @@!    !@@       @@!  @@@    @@!
  #  !@!  @!@   !@  @!@     !@!  @!@     !@!       !@!  @!@  !@!  @!@  !@!  @!@    !@!    !@!       !@!  @!@    !@!
  #  @!@  !@!    @!@!@      @!@  !@!     !!@@!!    @!@!@!@!  @!@  !@!  @!@!!@!     @!!    !@!       @!@  !@!    @!!
  #  !@!  !!!    !!!@  !!!  !@!  !!!      !!@!!!   !!!@!!!!  !@!  !!!  !!@!@!      !!!    !!!       !@!  !!!    !!!
  #  !!:  !!!   !!:!!:!!:   !!:  !!!          !:!  !!:  !!!  !!:  !!!  !!: :!!     !!:    :!!       !!:  !!!    !!:
  #  :!:  !:!  :!:  !:!:    :!:  !:!         !:!   :!:  !:!  :!:  !:!  :!:  !:!    :!:    :!:       :!:  !:!    :!:
  #   :::: ::  ::: ::::::    :::: ::     :::: ::   ::   :::  ::::: ::  ::   :::     ::     ::: :::  ::::: ::     ::
  #  :: :  :    ::: :: :::  :: :  :      :: : :     :   : :   : :  :    :   : :     :      :: :: :   : :  :      :
  #

  "
  puts "WELCOME TO D&D SHORTCUT! TO GET STARTED PLEASE SELECT FROM THE FOLLOWING OPTIONS:"
  loop do
    puts ""
    puts "Encyclopedia"
    puts "Encounter Generator"
    puts "Item Generator"
    puts "Quit"
    input = gets.chomp
    if input.downcase == "encounter generator"
      loop do
      puts ""
      puts "Where is this encounter taking place?"
      puts ""
      puts "Random?"
      puts "Swamp?"
      puts "Desert?"
      puts "Forest?"
      puts "Deep Woods?"
      puts "Cave?"
      puts "At Sea?"
      puts "Fortress?"
      puts "Field?"
      puts "Volcano?"
      input2 = gets.chomp
       if input2.downcase == "random"
         Encounter.new_random_encounter
         break
       elsif input2.downcase == "swamp"
         Encounter.new_swamp_encounter
         break
       elsif input2.downcase == "desert"
         Encounter.new_desert_encounter
         break
       elsif input2.downcase == "forest"
         Encounter.new_forest_encounter
         break
       elsif input2.downcase == "deep woods"
         Encounter.new_deep_woods_encounter
         break
       elsif input2.downcase == "cave"
         Encounter.new_cave_encounter
         break
       elsif input2.downcase == "at sea"
         Encounter.new_at_sea_encounter
         break
       elsif input2.downcase == "fortress"
         Encounter.new_fortress_encounter
         break
       elsif input2.downcase == "field"
         Encounter.new_field_encounter
         break
       elsif input2.downcase == "volcano"
         Encounter.new_volcano_encounter
         break
       else
         puts "Please enter a valid location."
       end
      end
    elsif input.downcase == "item generator"
      loop do
        puts ""
        puts "What would you like to do?"
        puts ""
        puts "List items by type?"
        puts "Find item by name (and category)?"
        puts "Create X number of random items?"
        puts "Create random number of random items?"
        input3 = gets.chomp
        if input3.downcase == "list items by type"
          Equipment.types_catalog
          break
        elsif input3.downcase == "find item by name"
          puts "What is the name of the item?"
          user1 = gets.chomp
          puts "What is the item's category (optional)?"
          user2 = gets.chomp
          Equipment.find_item(user1, user2)
          break
        elsif input3.downcase == "create x number of random items"
          Equipment.random_items_as_string
          break
        elsif input3.downcase == "create random number of random items"
          Equipment.random_number_of_items_as_string
          break
        else
          puts "Please enter a valid command."
        end
      end

    elsif input.downcase == "quit"
      break
    else
      puts "Please enter a valid option."
    end
  end
end


run
