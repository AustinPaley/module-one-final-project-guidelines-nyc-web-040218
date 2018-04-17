require 'pry'
class Spell < ActiveRecord::Base
  belongs_to :monster

  def self.all_descriptions
    Spell.all.map do |spell_object|
      spell_object.description.gsub(/[\[\]\\"]/, "")
    end
  end

end
