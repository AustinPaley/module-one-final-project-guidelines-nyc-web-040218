class Language < ActiveRecord::Base
  belongs_to :monsters

  def self.types
    puts "Choose language type: Standard or Exotic"
    while answer = gets.chomp
      case answer.downcase
      when "standard"
        Language.standard
        break
      when "exotic"
        Language.exotic
        break
      else
      puts "Please enter a valid language type."
      end
    end
  end

### HELPER METHODS ###
def self.standard
  standard_language = Language.all.select do |language_obj|
    language_obj["language_type"].downcase == "standard"
  end
  standard_language.map do |language_obj|
    puts ""
    puts "#{language_obj.name}"
    puts "Language Type: #{language_obj.language_type}"
    puts ""
    puts "==========="
  end
end

def self.exotic
  exotic_language = Language.all.select do |language_obj|
    language_obj["language_type"].downcase == "exotic"
  end
  exotic_language.map do |language_obj|
    puts ""
    puts "#{language_obj.name}"
    puts "Language Type: #{language_obj.language_type}"
    puts ""
    puts "==========="
  end
end

### END HELPER METHODS ###

end
