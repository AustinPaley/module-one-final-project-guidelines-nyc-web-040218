class Encounter < ActiveRecord::Base
  has_many :monsters
  has_many :languages, through: :monsters
  has_many :spells, through: :monsters

  def self.new_random_encounter
    array = ["swamp", "desert", "forest", "deep_woods", "cave", "at_sea", "fortress", "field", "volcano"]
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
    elsif random_location == "deep_woods"
      puts "You are in a #{random_location}."
      Encounter.new_deep_woods_encounter
    elsif random_location == "cave"
      puts "You are in a #{random_location}."
      Encounter.new_cave_encounter
    elsif random_location == "at_sea"
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
      if number_of_monsters.is_a?(Integer) && number_of_monsters < 1
        puts "Please enter a number greater than zero."
      elsif number_of_monsters == 1
        monster = Monster.random_monster
        puts "As you're traveling through the swamp, you suddenly encounter a #{monster.name}."
        break
      elsif number_of_monsters == 2
        this_encounters_monsters = []
        number_of_monsters.times do
          monster = Monster.random_monster
          this_encounters_monsters.push(monster.name)
        end
        puts "As you're traveling through the swamp, you suddenly encounter a #{this_encounters_monsters[0]} and a #{this_encounters_monsters[1]}."
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
          puts "As you're traveling through the swamp, you suddenly encounter #{the_whole_shabang}."
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
