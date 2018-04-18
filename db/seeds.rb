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
    hit_points: monster_val["hit_points"],
    size: monster_val["size"],
    actions: monster_val["actions"],
    challenge_rating: monster_val["challenge_rating"],
    speed: monster_val["speed"],
    armor_class: monster_val["armor_class"],
    strength: monster_val["strength"],
    dexterity: monster_val["dexterity"],
    constitution: monster_val["constitution"],
    intelligence: monster_val["intelligence"],
    wisdom: monster_val["wisdom"],
    constitution_save: monster_val["constitution_save"],
    intelligence_save: monster_val["intelligence_save"],
    wisdom_save: monster_val["wisdom_save"],
    history: monster_val["history"],
    perception: monster_val["perception"]

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
  language_type: language_val["type"]
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

# puts spell_info

def create_new_spell
  spell_info.map do |spell_val|

  Spell.create(
    name: spell_val["name"],
    description: spell_val["desc"]
  )

  end

end

###EQUIPMENT DATA###

def equipment_parsing
all_equipment_data = RestClient.get("http://www.dnd5eapi.co/api/equipment")
parsed_equipment_data = JSON.parse(all_equipment_data)
parsed_equipment_data
end


def equipment_object
  equipment_parsing["results"]
end

def equipment_info
  equipment_info_hash={}
  equipment_info_hashes = equipment_object.map do |equipment_obj|
    equipment_data = RestClient.get(equipment_obj["url"])
    cleaned_equipment_data = JSON.parse(equipment_data)
    equipment_info_hash[cleaned_equipment_data["name"]] = cleaned_equipment_data
  end
  equipment_info_hash
end


def create_new_equipment
  equipment_info.each do |equipment_key, equipment_val|

    Equipment.create(
    name: equipment_key,
    category: equipment_val["equipment_category"],
    value: equipment_val["cost"]

    )

  end

end

create_new_monster
create_new_language
create_new_spell
create_new_equipment
