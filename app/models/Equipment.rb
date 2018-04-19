class Equipment < ActiveRecord::Base
belongs_to :encounters

### EQUIPMENT TYPE ENCYCLOPEDIA ###

  def self.types
    puts "Choose an equipment type: Weapon, Armor, Adventuring Gear, Tools, or Mounts and Vehicles"
    while answer = gets.chomp
      case answer.downcase
      when "weapon"
        Equipment.weapons
        break
      when "armor"
        Equipment.armor
        break
      when "adventuring gear"
        Equipment.adventuring_gear
        break
      when "tools"
        Equipment.tools
        break
      when "mounts and vehicles"
        Equipment.mounts_and_vehicles
        break
      else
      puts "Please enter a valid equipment type."
      end
    end
  end

### END EQUIPMENT TYPE ENCYCLOPEDIA ###

### HELPER METHODS ###

  def self.weapons
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

  def self.armor
    armor = Equipment.all.select do |equipment_obj|
      equipment_obj["category"].downcase == "armor"
    end
    sample = armor.map do |equipment_obj|
      puts ""
      puts "#{equipment_obj.name}"
      puts "Equipment Type: #{equipment_obj.category}"
      puts "Weapon Value: #{equipment_obj.value}"
      puts ""
      puts "==========="
    end
  end

  def self.adventuring_gear
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

  def self.tools
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

  def self.mounts_and_vehicles
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

### END HELPER METHODS ###

end
