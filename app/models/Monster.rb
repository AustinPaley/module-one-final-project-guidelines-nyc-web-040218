class Monster < ActiveRecord::Base
  has_many :spells
  has_many :languages







# NOT SURE WHAT monster_key (the hash) is actually called
  def self.of_this_size(size)
    Monster.all.map do |mon|
      mon[:size] == size
    end #or use SELECT?
  end

  def self.easier_than(difficulty)
     Monster.all.map do |mon|
       if mon.challenge_rating < difficulty
         mon
       end
     end
   end

  def self.harder_than(difficulty)
     Monster.all.map do |mon|
       if mon.challenge_rating > difficulty
         mon
       end  #for this and above OR mon[:challenge_rating] instead of .challenge_rating
     end
   end

   def self.between_easy_and_hard(low_difficulty, high_difficulty)
     Monster.all.map do |mon|
       if mon[:challenge_rating] > low_difficulty && mon[:challenge_rating] < high_difficulty
         mon
       end
     end
   end

  def self.who_speak(language)
    Monster.all.map do |mon|
      if mon[:languages] == language
        mon
      end
    end
  end

  def is_successfully_attacked(user_attack_damage) #<< NO CLUE IF WE'LL EVER HAVE THAT ARGUMENT TO GIVE
    self[:hit_points] -= user_attack_damage
    self[:hit_points]
  end

  # def abilities
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
