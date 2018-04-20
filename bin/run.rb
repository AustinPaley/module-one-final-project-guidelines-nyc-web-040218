require_relative '../config/environment'
require 'pry'
require 'tty'
require 'tty-color'
def run
  pastel = Pastel.new
  puts pastel.red("


    @@@@@@@     @@@@@      @@@@@@@       @@@@@@   @@@  @@@   @@@@@@   @@@@@@@   @@@@@@@   @@@@@@@  @@@  @@@  @@@@@@@
    @@@@@@@@   @@@@@@@     @@@@@@@@     @@@@@@@   @@@  @@@  @@@@@@@@  @@@@@@@@  @@@@@@@  @@@@@@@@  @@@  @@@  @@@@@@@
    @@!  @@@  @@!   @@@    @@!  @@@     !@@       @@!  @@@  @@!  @@@  @@!  @@@    @@!    !@@       @@!  @@@    @@!
    !@!  @!@   !@  @!@     !@!  @!@     !@!       !@!  @!@  !@!  @!@  !@!  @!@    !@!    !@!       !@!  @!@    !@!
    @!@  !@!    @!@!@      @!@  !@!     !!@@!!    @!@!@!@!  @!@  !@!  @!@!!@!     @!!    !@!       @!@  !@!    @!!
    !@!  !!!    !!!@  !!!  !@!  !!!      !!@!!!   !!!@!!!!  !@!  !!!  !!@!@!      !!!    !!!       !@!  !!!    !!!
    !!:  !!!   !!:!!:!!:   !!:  !!!          !:!  !!:  !!!  !!:  !!!  !!: :!!     !!:    :!!       !!:  !!!    !!:
    :!:  !:!  :!:  !:!:    :!:  !:!         !:!   :!:  !:!  :!:  !:!  :!:  !:!    :!:    :!:       :!:  !:!    :!:
     :::: ::  ::: ::::::    :::: ::     :::: ::   ::   :::  ::::: ::  ::   :::     ::     ::: :::  ::::: ::     ::
    :: :  :    ::: :: :::  :: :  :      :: : :     :   : :   : :  :    :   : :     :      :: :: :   : :  :      :


  ")
  puts "WELCOME TO D&D SHORTCUT! TO GET STARTED PLEASE SELECT FROM THE FOLLOWING OPTIONS:"
  loop do
    puts ""
    puts pastel.red.bold("Encounter Generator")
    puts pastel.red.bold("Random Monster Generator")
    puts pastel.red.bold("Item Generator")
    puts pastel.red.bold("Encyclopedia")
    puts ""
    puts pastel.red.bold.underline("Quit")
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
      puts "Dungeon?"
      puts "Ruins?"
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
       elsif input2.downcase == "dungeon"
         Encounter.new_dungeon_encounter
         break
       elsif input2.downcase == "ruins"
         Encounter.new_ruins_encounter
         break
       else
         puts "Please enter a valid location."
       end
      end
    elsif input.downcase == "encyclopedia"
      loop do
        puts "How would you like to find items?"
        puts "By Type"
        puts "By Name"
        input4 = gets.chomp
        if input4.downcase == "by type" || input4.downcase == "type"
          Equipment.types_catalog
          break
        elsif input4.downcase == "by name" || input4.downcase == "name"
          puts "What is the name of the item?"
          item = gets.chomp
        # puts "What is the item's category (optional)?"
        # user2 = gets.chomp
          puts Equipment.find_item(item)#, user2)
          break
        else
          puts "Please enter a valid command."
        end
      end
    elsif input.downcase == "item generator"
      loop do
        puts ""
        puts "Would you like a specific or random number of items?"
        puts ""
        input3 = gets.chomp
        if input3.downcase == "specific number" || input3.downcase == "specific" || input3.downcase == "specific number"
          Equipment.random_items_as_string
          break
        elsif input3.downcase == "random items" || input3.downcase == "random number" || input3.downcase == "random"
          Equipment.item_generator
          break
        else
          puts "Please enter a valid command."
        end
      end

    elsif input.downcase == "quit"
      break
    elsif input.downcase == "random monster generator"
    loop do
      Monster.generate_random_monsters
      break
    end
    else
      puts "Please enter a valid option."
    end
  end
end


run
