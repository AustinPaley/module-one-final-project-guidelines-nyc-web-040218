class Monster < ActiveRecord::Base
  has_many :spells
  has_many :languages
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
