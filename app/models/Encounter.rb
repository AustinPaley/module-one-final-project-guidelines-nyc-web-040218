class Encounter < ActiveRecord::Base
  has_many :monsters
  has_many :languages, through: :monsters
  has_many :spells, through: :monsters

  def self.new_random_encounter
    array = ["swamp", "desert", "forest", "deep woods", "cave", "at sea", "fortress", "field", "volcano"]
    random_location = array.sample
    if random_location == "swamp"
      puts "You are in a #{random_location}."
      Encounter.new_swamp_encounter
    elsif random_location == "desert"
      puts "You are in a #{random_location}."
      Encounter.new_desert_encounter
    elsif random_location == "forest"
      puts "You are in a #{random_location}."
      Encounter.new_forest_encounter
    elsif random_location == "deep woods"
      puts "You are in a #{random_location}."
      Encounter.new_deep_woods_encounter
    elsif random_location == "cave"
      puts "You are in a #{random_location}."
      Encounter.new_cave_encounter
    elsif random_location == "at sea"
      puts "You are in a #{random_location}."
      Encounter.new_at_sea_encounter
    elsif random_location == "fortress"
      puts "You are in a #{random_location}."
      Encounter.new_fortress_encounter
    elsif random_location == "field"
      puts "You are in a #{random_location}."
      Encounter.new_field_encounter
    elsif random_location == "volcano"
      puts "You are in a #{random_location}."
      Encounter.new_volcano_encounter
    end
  end

  # *** ENCOUNTERS WITH MONSTERS IN CERTAIN LOCATIONS ***

  def self.new_swamp_encounter
    loop do
      puts "How many monsters?"
      number_of_monsters = gets.chomp.to_i
      if number_of_monsters < 1
        puts "Please enter a number greater than zero."
      elsif number_of_monsters == 1
        monster = Monster.random_monster
        puts ""
        puts "As you're traveling through the swamp, you suddenly encounter a #{monster.name}."
        puts ""
        puts "======================================================================"
        puts ""
        puts "Name: #{monster.name}"
        puts "Size: #{monster.size}"
        puts "Hit Points: #{monster.hit_points}"
        puts "Challenge Rating: #{monster.challenge_rating}"
        puts "Speed: #{monster.speed}, Armor Class: #{monster.armor_class}"
        puts ""
        puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
        puts " STR: #{monster.strength}, DEX: #{monster.dexterity}, CON: #{monster.constitution}, INT: #{monster.intelligence}, WIS: #{monster.wisdom}, CHA: #{monster.charisma}"
        puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
        puts ""
        puts "ACTIONS"
        puts ""
          if monster.actions != "nil"
            one_line_cleaned_monster_objects = monster.actions.gsub(/[\[\]\\"]/, "")
            one_line_cleaned_monster_objects.split("},").map do |one_line_monster_actions|
            puts one_line_monster_actions
            puts ""
            end
          else
            puts "N/A"
          end
        puts "======================================================================"
        puts ""
      break
      elsif number_of_monsters == 2
        counter = 0
        this_encounters_monsters = []
        number_of_monsters.times do
          monster = Monster.random_monster
          this_encounters_monsters << Monster.random_monster
        end
        puts ""
          this_encounters_monsters.map do |monster_object|
            if counter == 0
            puts "As you're traveling through the swamp, you suddenly encounter a #{monster_object.name}"
            counter += 1
            else
            puts "and a #{monster_object.name}."
            end
          end
        puts ""
        this_encounters_monsters.map do |monster_object|
          puts "======================================================================"
          puts ""
          puts "Name: #{monster_object.name}"
          puts "Size: #{monster_object.size}"
          puts "Hit Points: #{monster_object.hit_points}"
          puts "Challenge Rating: #{monster_object.challenge_rating}"
          puts "Speed: #{monster_object.speed}, Armor Class: #{monster_object.armor_class}"
          puts ""
          puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
          puts " STR: #{monster_object.strength}, DEX: #{monster_object.dexterity}, CON: #{monster_object.constitution}, INT: #{monster_object.intelligence}, WIS: #{monster_object.wisdom}, CHA: #{monster_object.charisma}"
          puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
          puts ""
          puts "ACTIONS"
          puts ""
            if monster_object.actions != "nil"
              one_line_cleaned_monster_objects = monster_object.actions.gsub(/[\[\]\\"]/, "")
              one_line_cleaned_monster_objects.split("},").map do |one_line_monster_actions|
              puts one_line_monster_actions
              puts ""
              end
            else
              puts "N/A"
            end
          puts "======================================================================"
          puts ""
        end
        break
      else
        this_encounters_monsters = []
        final_encounters_monsters = []
        number_of_monsters.times do
          monster = Monster.random_monster
          this_encounters_monsters.push(monster)
          final_encounters_monsters.push(monster)
        end
        # binding.pry
          last_monster = this_encounters_monsters.pop
          i = 0
          until i == this_encounters_monsters.length
            this_encounters_monsters[i].name.prepend('a ')
            i += 1
          end
          all_but_last_monster_name = this_encounters_monsters.map do |monster_obj|
            monster_obj.name
          end
          and_last_monster_name = ", and a #{last_monster.name}"
          the_whole_shabang = all_but_last_monster_name.join(", ") + and_last_monster_name
          puts "As you're traveling through the swamp, you suddenly encounter #{the_whole_shabang}."
          puts ""
          final_encounters_monsters.map do |monster_object|
            puts "======================================================================"
            puts ""
            puts "Name: #{monster_object.name}"
            puts "Size: #{monster_object.size}"
            puts "Hit Points: #{monster_object.hit_points}"
            puts "Challenge Rating: #{monster_object.challenge_rating}"
            puts "Speed: #{monster_object.speed}, Armor Class: #{monster_object.armor_class}"
            puts ""
            puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
            puts " STR: #{monster_object.strength}, DEX: #{monster_object.dexterity}, CON: #{monster_object.constitution}, INT: #{monster_object.intelligence}, WIS: #{monster_object.wisdom}, CHA: #{monster_object.charisma}"
            puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
            puts ""
            puts "ACTIONS"
            puts ""
              if monster_object.actions != "nil"
                one_line_cleaned_monster_objects = monster_object.actions.gsub(/[\[\]\\"]/, "")
                one_line_cleaned_monster_objects.split("},").map do |one_line_monster_actions|
                puts one_line_monster_actions
                puts ""
                end
              else
                puts "N/A"
              end
            puts "======================================================================"
            puts ""
          end
          break
      end
    end
  end

  def self.new_desert_encounter
    loop do
      puts "How many monsters?"
      number_of_monsters = gets.chomp.to_i
      if number_of_monsters.is_a?(Integer) && number_of_monsters < 1
        puts "Please enter a number greater than zero."
      elsif number_of_monsters == 1
        monster = Monster.random_monster
        puts "As you're traveling through the desert, you suddenly encounter a #{monster.name}."
        break
      elsif number_of_monsters == 2
        this_encounters_monsters = []
        number_of_monsters.times do
          monster = Monster.random_monster
          this_encounters_monsters.push(monster.name)
        end
        puts "As you're traveling through the desert, you suddenly encounter a #{this_encounters_monsters[0]} and a #{this_encounters_monsters[1]}."
        break
      else
        this_encounters_monsters = []
        number_of_monsters.times do
          monster = Monster.random_monster
          this_encounters_monsters.push(monster.name)
        end
          last_monster = this_encounters_monsters.pop
          i = 0
          until i == this_encounters_monsters.length
            this_encounters_monsters[i].prepend('a ')
            i += 1
          end
          all_but_last_monster = this_encounters_monsters.join(', ')
          and_last_monster = ", and a #{last_monster}"
          the_whole_shabang = all_but_last_monster + and_last_monster
          puts "As you're traveling through the desert, you suddenly encounter #{the_whole_shabang}."
          break
      end
    end
  end

  def self.new_forest_encounter
    loop do
      puts "How many monsters?"
      number_of_monsters = gets.chomp.to_i
      if number_of_monsters.is_a?(Integer) && number_of_monsters < 1
        puts "Please enter a number greater than zero."
      elsif number_of_monsters == 1
        monster = Monster.random_monster
        puts "As you're traveling through the forest, you suddenly encounter a #{monster.name}."
        break
      elsif number_of_monsters == 2
        this_encounters_monsters = []
        number_of_monsters.times do
          monster = Monster.random_monster
          this_encounters_monsters.push(monster.name)
        end
        puts "As you're traveling through the forest, you suddenly encounter a #{this_encounters_monsters[0]} and a #{this_encounters_monsters[1]}."
        break
      else
        this_encounters_monsters = []
        number_of_monsters.times do
          monster = Monster.random_monster
          this_encounters_monsters.push(monster.name)
        end
          last_monster = this_encounters_monsters.pop
          i = 0
          until i == this_encounters_monsters.length
            this_encounters_monsters[i].prepend('a ')
            i += 1
          end
          all_but_last_monster = this_encounters_monsters.join(', ')
          and_last_monster = ", and a #{last_monster}"
          the_whole_shabang = all_but_last_monster + and_last_monster
          puts "As you're traveling through the forest, you suddenly encounter #{the_whole_shabang}."
          break
      end
    end
  end

  def self.new_deep_woods_encounter
    loop do
      puts "How many monsters?"
      number_of_monsters = gets.chomp.to_i
      if number_of_monsters.is_a?(Integer) && number_of_monsters < 1
        puts "Please enter a number greater than zero."
      elsif number_of_monsters == 1
        monster = Monster.random_monster
        puts "As you're traveling through the deep woods, you suddenly encounter a #{monster.name}."
        break
      elsif number_of_monsters == 2
        this_encounters_monsters = []
        number_of_monsters.times do
          monster = Monster.random_monster
          this_encounters_monsters.push(monster.name)
        end
        puts "As you're traveling through the deep woods, you suddenly encounter a #{this_encounters_monsters[0]} and a #{this_encounters_monsters[1]}."
        break
      else
        this_encounters_monsters = []
        number_of_monsters.times do
          monster = Monster.random_monster
          this_encounters_monsters.push(monster.name)
        end
          last_monster = this_encounters_monsters.pop
          i = 0
          until i == this_encounters_monsters.length
            this_encounters_monsters[i].prepend('a ')
            i += 1
          end
          all_but_last_monster = this_encounters_monsters.join(', ')
          and_last_monster = ", and a #{last_monster}"
          the_whole_shabang = all_but_last_monster + and_last_monster
          puts "As you're traveling through the deep woods, you suddenly encounter #{the_whole_shabang}."
          break
      end
    end
  end

  def self.new_cave_encounter
    loop do
      puts "How many monsters?"
      number_of_monsters = gets.chomp.to_i
      if number_of_monsters.is_a?(Integer) && number_of_monsters < 1
        puts "Please enter a number greater than zero."
      elsif number_of_monsters == 1
        monster = Monster.random_monster
        puts "As you're traveling through a cave, you suddenly encounter a #{monster.name}."
        break
      elsif number_of_monsters == 2
        this_encounters_monsters = []
        number_of_monsters.times do
          monster = Monster.random_monster
          this_encounters_monsters.push(monster.name)
        end
        puts "As you're traveling through a cave, you suddenly encounter a #{this_encounters_monsters[0]} and a #{this_encounters_monsters[1]}."
        break
      else
        this_encounters_monsters = []
        number_of_monsters.times do
          monster = Monster.random_monster
          this_encounters_monsters.push(monster.name)
        end
          last_monster = this_encounters_monsters.pop
          i = 0
          until i == this_encounters_monsters.length
            this_encounters_monsters[i].prepend('a ')
            i += 1
          end
          all_but_last_monster = this_encounters_monsters.join(', ')
          and_last_monster = ", and a #{last_monster}"
          the_whole_shabang = all_but_last_monster + and_last_monster
          puts "As you're traveling through a cave, you suddenly encounter #{the_whole_shabang}."
          break
      end
    end
  end

  def self.new_at_sea_encounter
    loop do
      puts "How many monsters?"
      number_of_monsters = gets.chomp.to_i
      if number_of_monsters.is_a?(Integer) && number_of_monsters < 1
        puts "Please enter a number greater than zero."
      elsif number_of_monsters == 1
        monster = Monster.random_monster
        puts "As you're sailing the sea, you suddenly encounter a #{monster.name}."
        break
      elsif number_of_monsters == 2
        this_encounters_monsters = []
        number_of_monsters.times do
          monster = Monster.random_monster
          this_encounters_monsters.push(monster.name)
        end
        puts "As you're sailing the sea, you suddenly encounter a #{this_encounters_monsters[0]} and a #{this_encounters_monsters[1]}."
        break
      else
        this_encounters_monsters = []
        number_of_monsters.times do
          monster = Monster.random_monster
          this_encounters_monsters.push(monster.name)
        end
          last_monster = this_encounters_monsters.pop
          i = 0
          until i == this_encounters_monsters.length
            this_encounters_monsters[i].prepend('a ')
            i += 1
          end
          all_but_last_monster = this_encounters_monsters.join(', ')
          and_last_monster = ", and a #{last_monster}"
          the_whole_shabang = all_but_last_monster + and_last_monster
          puts "As you're sailing the sea, you suddenly encounter #{the_whole_shabang}."
          break
      end
    end
  end

  def self.new_fortress_encounter
    loop do
      puts "How many monsters?"
      number_of_monsters = gets.chomp.to_i
      if number_of_monsters.is_a?(Integer) && number_of_monsters < 1
        puts "Please enter a number greater than zero."
      elsif number_of_monsters == 1
        monster = Monster.random_monster
        puts "As you're exploring the fortress, you suddenly encounter a #{monster.name}."
        break
      elsif number_of_monsters == 2
        this_encounters_monsters = []
        number_of_monsters.times do
          monster = Monster.random_monster
          this_encounters_monsters.push(monster.name)
        end
        puts "As you're exploring the fortress, you suddenly encounter a #{this_encounters_monsters[0]} and a #{this_encounters_monsters[1]}."
        break
      else
        this_encounters_monsters = []
        number_of_monsters.times do
          monster = Monster.random_monster
          this_encounters_monsters.push(monster.name)
        end
          last_monster = this_encounters_monsters.pop
          i = 0
          until i == this_encounters_monsters.length
            this_encounters_monsters[i].prepend('a ')
            i += 1
          end
          all_but_last_monster = this_encounters_monsters.join(', ')
          and_last_monster = ", and a #{last_monster}"
          the_whole_shabang = all_but_last_monster + and_last_monster
          puts "As you're exploring the fortress, you suddenly encounter #{the_whole_shabang}."
          break
      end
    end
  end

  def self.new_field_encounter
    loop do
      puts "How many monsters?"
      number_of_monsters = gets.chomp.to_i
      if number_of_monsters.is_a?(Integer) && number_of_monsters < 1
        puts "Please enter a number greater than zero."
      elsif number_of_monsters == 1
        monster = Monster.random_monster
        puts "As you're traveling through a field, you suddenly encounter a #{monster.name}."
        break
      elsif number_of_monsters == 2
        this_encounters_monsters = []
        number_of_monsters.times do
          monster = Monster.random_monster
          this_encounters_monsters.push(monster.name)
        end
        puts "As you're traveling through a field, you suddenly encounter a #{this_encounters_monsters[0]} and a #{this_encounters_monsters[1]}."
        break
      else
        this_encounters_monsters = []
        number_of_monsters.times do
          monster = Monster.random_monster
          this_encounters_monsters.push(monster.name)
        end
          last_monster = this_encounters_monsters.pop
          i = 0
          until i == this_encounters_monsters.length
            this_encounters_monsters[i].prepend('a ')
            i += 1
          end
          all_but_last_monster = this_encounters_monsters.join(', ')
          and_last_monster = ", and a #{last_monster}"
          the_whole_shabang = all_but_last_monster + and_last_monster
          puts "As you're traveling through a field, you suddenly encounter #{the_whole_shabang}."
          break
      end
    end
  end

  def self.new_volcano_encounter
    loop do
      puts "How many monsters?"
      number_of_monsters = gets.chomp.to_i
      if number_of_monsters.is_a?(Integer) && number_of_monsters < 1
        puts "Please enter a number greater than zero."
      elsif number_of_monsters == 1
        monster = Monster.random_monster
        puts "As you're exploring the volcano, you suddenly encounter a #{monster.name}."
        break
      elsif number_of_monsters == 2
        this_encounters_monsters = []
        number_of_monsters.times do
          monster = Monster.random_monster
          this_encounters_monsters.push(monster.name)
        end
        puts "As you're exploring the volcano, you suddenly encounter a #{this_encounters_monsters[0]} and a #{this_encounters_monsters[1]}."
        break
      else
        this_encounters_monsters = []
        number_of_monsters.times do
          monster = Monster.random_monster
          this_encounters_monsters.push(monster.name)
        end
          last_monster = this_encounters_monsters.pop
          i = 0
          until i == this_encounters_monsters.length
            this_encounters_monsters[i].prepend('a ')
            i += 1
          end
          all_but_last_monster = this_encounters_monsters.join(', ')
          and_last_monster = ", and a #{last_monster}"
          the_whole_shabang = all_but_last_monster + and_last_monster
          puts "As you're exploring the volcano, you suddenly encounter #{the_whole_shabang}."
          break
      end
    end
  end

end


  # this_encounters_items = []
  # num_of_items = rand(1..4)
  # num_of_items.times do
  #   item = Equipment.random_item
  #   this_encounters_items.push(item)
  #
  #   puts "The 'monster(s)' are carrying a 'items'. Players may collect these items if they are victorious."


#ADD REWARD ITEMS IF Weapon
#SPAWN monster instance and the details
