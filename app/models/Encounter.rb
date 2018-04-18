class Encounter < ActiveRecord::Base
  has_many :monsters
  has_many :languages, through: :monsters
  has_many :spells, through: :monsters

  def new_random_encounter(location, number_of_monsters)
    puts "You have entered #{location}. Heavy breathing slowly draws closer. You suddenly see #{number_of_monsters} " #RANDOM MONSTERS
  end

  def new_swamp_encounter(number_of_monsters)
    puts "As your traveling through the swamp, you suddenly encounter #{number_of_monsters} "
  end

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
