class Language < ActiveRecord::Base
  belongs_to :monster

  def which_monsters_speak
    Monster.all.map do |mon|
      mon[:languages] == self
    end
  end #HUGE POTENTIAL PROBLEM because languages are stored as one string that has to be split






end




# every languages
#
# what monsters speak this languages
#
# what languages are this type
#
# what type is this language
