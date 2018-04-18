class CreateMonsters < ActiveRecord::Migration[5.0]
  def change
    create_table :monsters do |t|
      t.string :name
      t.integer :hit_points
      t.string :size
      t.string :actions
      t.integer :challenge_rating
      t.integer :speed
      t.integer :armor_class
      t.integer :strength
      t.integer :dexterity
      t.integer :constitution
      t.integer :intelligence
      t.integer :wisdom
      t.integer :constitution_save
      t.integer :intelligence_save
      t.integer :wisdom_save
      t.integer :history
      t.integer :perception
    end
  end
end


# name: monster_key,
# hit_points: monster_val["hit_points"],
# size: monster_val["size"],
# actions: monster_val["actions"],
# challenge_rating: monster_val["challenge_rating"],
# speed: monster_val["speed"],
# languages: monster_val["languages"]




# name, size, type, hit_points
