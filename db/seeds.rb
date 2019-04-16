# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'
User.destroy_all
Score.destroy_all
Pokemon.destroy_all

ann = User.create(name: "Ann", email: "ann.duong@example.com")
ammar = User.create(name: "Ammar", email: "ammar.ali@example.com")
stephen = User.create(name: "Stephen", email: "stephen.yoon@example.com")

base_path = "https://pokeapi.co/api/v2/pokemon/"

i = 1
while i < 808 do
  target = JSON.load(open("#{base_path}#{i}"))
  # Pokemon.create(name: target["name"], type1: target["types"][0]["type"]["name"], type2: target["types"][1]["type"]["name"], image_url: target["sprites"]["front_default"])
  # i += 1
  if target["types"][1] != nil
    Pokemon.create(name: target["name"], type1: target["types"][0]["type"]["name"], type2: target["types"][1]["type"]["name"], image_url: target["sprites"]["front_default"])
    i += 1
  else
    Pokemon.create(name: target["name"], type1: target["types"][0]["type"]["name"], type2: nil, image_url: target["sprites"]["front_default"])
    i += 1
  end
end
