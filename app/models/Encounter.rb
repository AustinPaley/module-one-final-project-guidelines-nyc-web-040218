class Encounter < ActiveRecord::Base
  has_many :monsters
  has_many :languages, through: :monsters
  has_many :spells, through: :monsters

  def new_random_encounter(location, number_of_monsters)
    puts "You have entered #{location}. Heavy breathing slowly draws closer. You suddenly see #{number_of_monsters} " #RANDOM MONSTERS
  end

  def self.new_swamp_encounter(number_of_monsters)
    if number_of_monsters < 1
      puts "Please enter a number greater than zero."
      number_of_monsters = gets.chomp #!!!!!DONESNT LIKE GETS!!!!!!!!!!!!!!!!!
      Encounter.new_swamp_encounter(number_of_monsters)
    elsif number_of_monsters == 1
      monster = Monster.random_monster
      puts "As you're traveling through the swamp, you suddenly encounter a #{monster.name}."
    elsif number_of_monsters == 2
      this_encounters_monsters = []
      number_of_monsters.times do
        monster = Monster.random_monster
        this_encounters_monsters.push(monster.name)
      end
      puts "As you're traveling through the swamp, you suddenly encounter a #{this_encounters_monsters[0]} and a #{this_encounters_monsters[1]}."
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
    end
  end
  #
  #     theLastThing = array.pop
  # theFirstThings = array.join(", ")
  # lastAndThing = ", and #{theLastThing}"
  # theFinalThingTogether = theFirstThings + lastAndThing

      # if number_of_monsters < 1
      #   puts "Please enter a number greater than zero."
      #   number_of_monsters = gets.chomp
      #   Encounter.new_swamp_encounter(number_of_monsters)
      #   break
      # elsif number_of_monsters == 1
      #   monster = Monster.random_monster
      #   puts "As you're traveling through the swamp, you suddenly encounter a #{monster}."
      # elsif number_of_monsters == 2
      #   monster = Monster.random_monster
      #   puts "As you're traveling through the swamp, you suddenly encounter a #{monster}."
      #    #{this_encounters_monsters.join(', ')}."
      # this_encounters_monsters << "a #{monster}"
      # this_encounters_monsters

  #   end
  #   puts "As you're traveling through the swamp, you suddenly encounter #{this_encounters_monsters.join(', ')}."
  # end  ##{number_of_monsters}
  # #

  def new_desert_encounter(number_of_monsters)
  end

  def new_forest_encounter(number_of_monsters)
  end

  def new_deep_woods_encounter(number_of_monsters)
  end

  def new_cave_encounter(number_of_monsters)
  end

  def new_at_sea_encounter(number_of_monsters)
  end

  def new_fortress_encounter(number_of_monsters)
  end

  def new_field_encounter(number_of_monsters)
  end

  def new_volcano_encounter(number_of_monsters)
  end

end
