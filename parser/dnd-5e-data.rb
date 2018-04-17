require 'JSON'
require 'rest-client'
all_data = RestClient.get("http://www.dnd5eapi.co/api/monsters")
parsed_data = JSON.parse(all_data)

puts parsed_data
