require 'JSON'
require 'rest-client'
require 'pry'

###MONSTERS DATA###

def monster_parsing
all_monster_data = RestClient.get("http://www.dnd5eapi.co/api/monsters")
parsed_monster_data = JSON.parse(all_monster_data)
parsed_monster_data
end


def monsters_object
  monster_parsing["results"]
end


def monster_info
  monster_info_hash={}
  monster_info_hashes = monsters_object.map do |monster_obj|
    monsters_data = RestClient.get(monster_obj["url"])
    cleaned_monster_data = JSON.parse(monsters_data)
    monster_info_hash[cleaned_monster_data["name"]] = cleaned_monster_data
  end
  monster_info_hash
end


def create_new_monster
  monster_info.each do |monster_key, monster_val|

    Monster.create(
    name: monster_key,
    hp: monster_val["hit_points"],
    size: monster_val["size"],
    actions: monster_val["actions"],
    challenge_rating: monster_val["challenge_rating"],
    speed: monster_val["speed"],
    languages: monster_val["languages"]
    )

  end

end


###LANGUAGES DATA###
def language_parsing
all_language_data = RestClient.get("http://www.dnd5eapi.co/api/languages")
parsed_language_data = JSON.parse(all_language_data)
parsed_language_data
end


def language_object
language_parsing["results"]
end


def language_info
  language_info_hash={}
  language_info_hashes = language_object.map do |language_obj|
    languages_data = RestClient.get(language_obj["url"])
    cleaned_language_data = JSON.parse(languages_data)
    language_info_hash[cleaned_language_data["name"]] = cleaned_language_data
  end
  language_info_hash
end


def create_new_language
  language_info.each do |language_key, language_val|

  Language.create(
  name: language_key,
  type: language_val["type"]
  # typical_speakers: language_val["typical_speakers"]
  )

  end

end


###SPELLS DATA###
def spells_parsing
all_spells_data = RestClient.get("http://www.dnd5eapi.co/api/spells")
parsed_spells_data = JSON.parse(all_spells_data)
parsed_spells_data
end


def spells_object
spells_parsing["results"]
end


def spell_info
  spell_info_hash={}
  spell_info_hash = spells_object.map do |spell_obj|
    spells_data = RestClient.get(spell_obj["url"])
    cleaned_spell_data = JSON.parse(spells_data)
    spell_info_hash[cleaned_spell_data["name"]] = cleaned_spell_data
  end
  spell_info_hash
end


def create_new_spell
  spell_info.each do |spell_key, spell_val|

  Spell.create(
  name: spell_key,
  description: spell_val["desc"]
  )

  end

end
