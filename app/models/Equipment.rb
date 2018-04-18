class Equipment < ActiveRecord::Base
belongs_to :encounters


  def self.types
    puts "Choose an equipment type: 'Weapon', 'Armor', 'Adventuring Gear', 'Tools', 'Mounts and Vehicles'"
    answer = gets.chomp
    if answer.downcase == "weapon"
      Equipment.weapons.map do |weapons_obj|
        puts "#{weapons_obj.name}, #{weapons_obj.category}, #{weapons_obj.value}"
      end
    elsif answer.downcase == "armor"
      Equipment.armor.map do |armor_obj|
        puts "#{weapons_obj.name}, #{weapons_obj.category}, #{weapons_obj.value}"
      end
    elsif answer.downcase == "adventuring gear"
      Equipment.adventuring_gear.map do |adventuring_gear_obj|
        puts "#{weapons_obj.name}, #{weapons_obj.category}, #{weapons_obj.value}"
      end
    elsif answer.downcase == "tools"
      Equipment.tools.map do |tools_obj|
        puts "#{weapons_obj.name}, #{weapons_obj.category}, #{weapons_obj.value}"
      end
    elsif answer.downcase == "mounts and vehicles"
      Equipment.mounts_and_vehicles.map do |mounts_and_vehicles_obj|
        puts "#{weapons_obj.name}, #{weapons_obj.category}, #{weapons_obj.value}"
      end
    else
      puts "Please enter a valid equipment type."
    end
  end

  def self.weapons
    Equipment.all.select do |equipment_obj|
      equipment_obj["category"].downcase == "weapon"
    end
  end

  def self.armor
    Equipment.all.select do |equipment_obj|
      equipment_obj["category"].downcase == "armor"
    end
  end

  def self.adventuring_gear
    Equipment.all.select do |equipment_obj|
      equipment_obj["category"].downcase == "adventuring gear"
    end
  end

  def self.tools
    Equipment.all.select do |equipment_obj|
      equipment_obj["category"].downcase == "tools"
    end
  end

  def self.mounts_and_vehicles
    Equipment.all.select do |equipment_obj|
      equipment_obj["category"].downcase == "mounts and vehicles"
    end
  end

end
