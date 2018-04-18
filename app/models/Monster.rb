class Monster < ActiveRecord::Base
  belongs_to :encounters
  has_many :spells
  has_many :languages


# NOT SURE WHAT monster_key (the hash) is actually called
  def self.of_this_size(size)
    Monster.all.select do |mon|
      mon[:size].downcase == size.downcase
    end #or use SELECT?
  end

  def self.easier_than(difficulty)
     Monster.all.select do |mon|
       if mon.challenge_rating < difficulty
         mon.name
       end
     end
   end

  def self.harder_than(difficulty)
     Monster.all.select do |mon|
       if mon.challenge_rating > difficulty
         mon.name
       end  #for this and above OR mon[:challenge_rating] instead of .challenge_rating
     end
   end

   def self.between_easy_and_hard(low_difficulty, high_difficulty)
     Monster.all.select do |mon|
       if mon.challenge_rating > low_difficulty && mon.challenge_rating < high_difficulty
         mon
       end
     end
   end

  def self.who_speak(language)
    Monster.all.select do |mon|
      if mon.languages == language
        mon
      end
    end
  end

  def is_successfully_attacked(user_attack_damage) #<< NO CLUE IF WE'LL EVER HAVE THAT ARGUMENT TO GIVE
    self.hit_points -= user_attack_damage
    self.hit_points
  end

  def cleaned_action_data
    Monster.all.map do |monster_object|
      almost_cleaned = monster_object.actions.gsub(/[\[\]\\"]/, "")
      cleaned = almost_cleaned[1..-2]
      cleaned
    end
  end

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
#CHECK THIS OUT! IFS THIS A BETTER APPROACH THAN ALL THE ABOVE METHODS?
  def self.random_monster#(*difficulty)
    # if difficulty
    #   Monster.all.select do |mon|
    #     mon.challenge_rating == difficulty
    #   end
    # else
      Monster.all.sample
  #  end
  end

#  def self.
  # def random_location_monster(*difficulty)
  # end

end



# Monster.create(
#    name: monster_key,
#    hp: monster_val["hit_points"],
#    size: monster_val["size"],
#    actions: monster_val["actions"],
#    challenge_rating: monster_val["challenge_rating"],
#    speed: monster_val["speed"],
#    languages: monster_val["languages"]
#    )
