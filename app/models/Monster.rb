class Monster < ActiveRecord::Base
  belongs_to :encounters
  has_many :spells
  has_many :languages


### MONSTER GENERATORS BY DIFFICULTY ###

  def self.generate_very_easy_monsters(number_of_monsters=0)
    if number_of_monsters == 0
      puts "Please enter how many monsters you would like."
    else
      very_easy_monsters = Monster.all.select do |monster_obj|
        monster_obj.challenge_rating < 1
      end
      very_easy_monsters.sample(number_of_monsters)
    end
  end

  def self.generate_easy_monsters(number_of_monsters=0)
    if number_of_monsters == 0
      puts "Please enter how many monsters you would like."
    else
      easy_monsters = Monster.all.select do |monster_obj|
        monster_obj.challenge_rating < 3
      end
      easy_monsters.sample(number_of_monsters)
    end
  end

  def self.generate_medium_monsters(number_of_monsters=0)
    if number_of_monsters == 0
      puts "Please enter how many monsters you would like."
    else
      medium_monsters = Monster.all.select do |monster_obj|
        monster_obj.challenge_rating > 3 && monster_obj.challenge_rating < 7
      end
      medium_monsters.sample(number_of_monsters)
    end
  end

  def self.generate_hard_monsters(number_of_monsters=0)
    if number_of_monsters == 0
      puts "Please enter how many monsters you would like."
    else
      hard_monsters = Monster.all.select do |monster_obj|
        monster_obj.challenge_rating > 7 && monster_obj.challenge_rating < 10
      end
      hard_monsters.sample(number_of_monsters)
    end
  end

  def self.generate_very_hard_monsters(number_of_monsters=0)
    if number_of_monsters == 0
      puts "Please enter how many monsters you would like."
    else
      very_hard_monsters = Monster.all.select do |monster_obj|
        monster_obj.challenge_rating > 10 && monster_obj.challenge_rating < 20
      end
      very_hard_monsters.sample(number_of_monsters)
    end
  end

  def self.generate_impossible_monsters(number_of_monsters=0)
    if number_of_monsters == 0
      puts "Please enter how many monsters you would like."
    else
      impossible_monsters = Monster.all.select do |monster_obj|
        monster_obj.challenge_rating > 20 && monster_obj.challenge_rating <= 30
      end
      impossible_monsters.sample(number_of_monsters)
    end
  end

### END MONSTER GENERATORS BY DIFFICULTY ###


### SIZE ENCYCLOPEDIA ###

  def self.sizes
    puts "Choose a monster size: Tiny, Small, Medium, Large, Huge, or Gargantuan"
    while answer = gets.chomp
      case answer.downcase
      when "tiny"
        Monster.tiny
        break
      when "small"
        Monster.small
        break
      when "medium"
        Monster.medium
        break
      when "large"
        Monster.large
        break
      when "huge"
        Monster.huge
        break
      when "gargantuan"
        Monster.gargantuan
        break
      else
      puts "Please enter a valid monster size."
      end
    end
  end

### END SIZE ENCYCLOPEDIA ###


###HELPER METHODS###

  def self.tiny
    tiny_monster = Monster.all.select do |monster_object|
      monster_object.size == "Tiny"
    end
    tiny_monster.map do |monster_object|
      puts ""
      puts "#{monster_object.name}"
      puts "Challenge Rating: #{monster_object.challenge_rating}"
      puts "Hit Points: #{monster_object.hit_points}"
      puts ""
      puts "==========="
    end
  end

  def self.small
    small_monster = Monster.all.select do |monster_object|
      monster_object.size == "Small"
    end
    small_monster.map do |monster_object|
      puts ""
      puts "#{monster_object.name}"
      puts "Challenge Rating: #{monster_object.challenge_rating}"
      puts "Hit Points: #{monster_object.hit_points}"
      puts ""
      puts "==========="
    end
  end

  def self.medium
    medium_monster = Monster.all.select do |monster_object|
      monster_object.size == "Medium"
    end
    medium_monster.map do |monster_object|
      puts ""
      puts "#{monster_object.name}"
      puts "Challenge Rating: #{monster_object.challenge_rating}"
      puts "Hit Points: #{monster_object.hit_points}"
      puts ""
      puts "==========="
    end
  end

  def self.large
    large_monster = Monster.all.select do |monster_object|
      monster_object.size == "Large"
    end
    large_monster.map do |monster_object|
      puts ""
      puts "#{monster_object.name}"
      puts "Challenge Rating: #{monster_object.challenge_rating}"
      puts "Hit Points: #{monster_object.hit_points}"
      puts ""
      puts "==========="
    end
  end

  def self.huge
    huge_monster = Monster.all.select do |monster_object|
      monster_object.size == "Huge"
    end
    huge_monster.map do |monster_object|
      puts ""
      puts "#{monster_object.name}"
      puts "Challenge Rating: #{monster_object.challenge_rating}"
      puts "Hit Points: #{monster_object.hit_points}"
      puts ""
      puts "==========="
    end
  end

  def self.gargantuan
    gargantuan_monster = Monster.all.select do |monster_object|
      monster_object.size == "Gargantuan"
    end
    gargantuan_monster.map do |monster_object|
      puts ""
      puts "#{monster_object.name}"
      puts "Challenge Rating: #{monster_object.challenge_rating}"
      puts "Hit Points: #{monster_object.hit_points}"
      puts ""
      puts "==========="
    end
  end

  def self.random_monster
      Monster.all.sample
  end

  def cleaned_action_data
    Monster.all.map do |monster_object|
      almost_cleaned = monster_object.actions.gsub(/[\[\]\\"]/, "")
      cleaned = almost_cleaned[1..-2]
      cleaned
    end
  end

### END SIZE HELPER METHODS ###









end
