require_relative '../config/environment'
require 'pry'
Monster.new(
  name: "Humzah",
  size: "XS",
  hit_points: 100000000
)

binding.pry
