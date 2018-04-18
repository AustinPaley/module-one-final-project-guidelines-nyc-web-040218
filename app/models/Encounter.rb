class Encounter < ActiveRecord::Base
  has_many :monsters
  has_many :languages, through: :monsters
  has_many :spells, through: :monsters

  def new_random_encounter(location, number_of_monsters)
    puts "You have entered #{location}. Heavy breathing slowly draws closer. You suddenly see #{number_of_monsters}"
  end

  def new_swamp_encounter
  end

  def new_swamp_encounter
  end

  def new_swamp_encounter
  end



end
