class Equipment < ActiveRecord::Base
belongs_to :encounters

### EQUIPMENT TYPE ENCYCLOPEDIA ###

  def self.types_catalog
    puts "Choose an equipment type: Weapon, Armor, Adventuring Gear, Tools, or Mounts and Vehicles"
    while answer = gets.chomp
      case answer.downcase
      when "weapon"
        Equipment.weapons_catalog
        break
      when "armor"
        Equipment.armor_catalog
        break
      when "adventuring gear"
        Equipment.adventuring_gear_catalog
        break
      when "tools"
        Equipment.tools_catalog
        break
      when "mounts and vehicles"
        Equipment.mounts_and_vehicles_catalog
        break
      else
      puts "Please enter a valid equipment type."
      end
    end
  end

### END EQUIPMENT TYPE ENCYCLOPEDIA ###

### HELPER METHODS ###

  def self.weapons_catalog
    weapons = Equipment.all.select do |equipment_obj|
      equipment_obj["category"].downcase == "weapon"
    end
    weapons.map do |equipment_obj|
      puts ""
      puts "#{equipment_obj.name}"
      puts "Equipment Type: #{equipment_obj.category}"
      puts "Weapon Value: #{equipment_obj.value}"
      puts ""
      puts "==========="
    end
  end

  def self.armor_catalog
    armor = Equipment.all.select do |equipment_obj|
      equipment_obj["category"].downcase == "armor"
    end
    armor.map do |equipment_obj|
      puts ""
      puts "#{equipment_obj.name}"
      puts "Equipment Type: #{equipment_obj.category}"
      puts "Weapon Value: #{equipment_obj.value}"
      puts ""
      puts "==========="
    end
  end

  def self.adventuring_gear_catalog
    adventuring_gear = Equipment.all.select do |equipment_obj|
      equipment_obj["category"].downcase == "adventuring gear"
    end
    adventuring_gear.map do |equipment_obj|
      puts ""
      puts "#{equipment_obj.name}"
      puts "Equipment Type: #{equipment_obj.category}"
      puts "Weapon Value: #{equipment_obj.value}"
      puts ""
      puts "==========="
    end
  end

  def self.tools_catalog
    tools = Equipment.all.select do |equipment_obj|
      equipment_obj["category"].downcase == "tools"
    end
    tools.map do |equipment_obj|
      puts ""
      puts "#{equipment_obj.name}"
      puts "Equipment Type: #{equipment_obj.category}"
      puts "Weapon Value: #{equipment_obj.value}"
      puts ""
      puts "==========="
    end
  end

  def self.mounts_and_vehicles_catalog
    mounts_and_vehicles = Equipment.all.select do |equipment_obj|
      equipment_obj["category"].downcase == "mounts and vehicles"
    end
    mounts_and_vehicles.map do |equipment_obj|
      puts ""
      puts "#{equipment_obj.name}"
      puts "Equipment Type: #{equipment_obj.category}"
      puts "Weapon Value: #{equipment_obj.value}"
      puts ""
      puts "==========="
    end
  end

  def self.weapons
    Equipment.all.select do |equipment|
      equipment["category"].downcase == "weapon"
    end
  end

  def self.armor
    Equipment.all.select do |equipment|
      equipment["category"].downcase == "armor"
    end
  end

  def self.adventuring_gear
    Equipment.all.select do |equipment|
      equipment["category"].downcase == "adventuring gear"
    end
  end

  def self.tools
    Equipment.all.select do |equipment|
      equipment["category"].downcase == "tools"
    end
  end

  def self.mounts_and_vehicles
    Equipment.all.select do |equipment|
      equipment["category"].downcase == "mounts and vehicles"
    end
  end

  def self.find_item(name, category = false)
    if category
      cat_format = category.tr(' ', '_').downcase
      if cat_format == "weapons"
        Equipment.weapons.select do |item|
          item.name.downcase == name.downcase
        end
      elsif cat_format == "armor"
        Equipment.armor.select do |item|
          item.name.downcase == name.downcase
        end
      elsif cat_format == "adventuring_gear"
        Equipment.adventuring_gear.select do |item|
          item.name.downcase == name.downcase
        end
      elsif cat_format == "tools"
        Equipment.tools.select do |item|
          item.name.downcase == name.downcase
        end
      elsif cat_format == "mounts_and_vehicles"
        Equipment.mounts_and_vehicles.select do |item|
          item.name.downcase == name.downcase
        end
      end
    else
      Equipment.all.select do |item|
        item.name.downcase == name.downcase
      end
    end
  end

  def self.random_item
    Equipment.all.sample
  end

  def self.random_number_of_items_as_string
    this_encounters_items = []
    num_of_items = rand(1..4)
    if num_of_items == 1
      item = Equipment.random_item
      puts "You found a #{item.name}."
    elsif num_of_items == 2
      num_of_items.times do
      item = Equipment.random_item
      this_encounters_items.push(item)
    end
      puts "You found a #{this_encounters_items[0].name} and a #{this_encounters_items[1].name}."
    else
      num_of_items.times do
      item = Equipment.random_item
      this_encounters_items.push(item.name)
    end
      last_item = this_encounters_items.pop
      i = 0
      until i == this_encounters_items.length
        this_encounters_items[i].prepend('a ')
        i += 1
      end
      all_but_last_item = this_encounters_items.join(', ')
      and_last_item = ", and a #{last_item}"
      the_whole_shabang = all_but_last_item + and_last_item
      puts "You found #{the_whole_shabang}."
    end
  end


  def self.random_items_as_string
    loop do
      puts "How many items?"
      number_of_items = gets.chomp.to_i
      if number_of_items < 1
        puts "Please enter a number greater than zero."
      elsif number_of_items == 1
        item = Equipment.random_item
        puts "You found a #{item.name}."
        break
      elsif number_of_items == 2
        this_encounters_items = []
        number_of_items.times do
          item = Equipment.random_item
          this_encounters_items.push(item)
        end
        puts "You found a #{this_encounters_items[0].name} and a #{this_encounters_items[1].name}."
        break
      else
        this_encounters_items = []
        number_of_items.times do
          item = Equipment.random_item
          this_encounters_items.push(item.name)
        end
        last_item = this_encounters_items.pop
        i = 0
        until i == this_encounters_items.length
          this_encounters_items[i].prepend('a ')
          i += 1
        end
        all_but_last_item = this_encounters_items.join(', ')
        and_last_item = ", and a #{last_item}"
        the_whole_shabang = all_but_last_item + and_last_item
        puts "You found a #{the_whole_shabang}."
        break
      end
    end
  end

### END HELPER METHODS ###

end
