class Monster < ActiveRecord::Base
  has_many :actions
  has_many :languages

  def self.of_this_size(size)
    monster_key[size]
  end


# CHALLENGE RATING OUT OF TEN!?!?!?!?!?
  # def self.easier_than(challenge_rating)
  #   Monster.all.map


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
