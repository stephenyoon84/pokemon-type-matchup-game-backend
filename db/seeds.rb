# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Score.destroy_all
Pokemon.destroy_all

ann = User.create(name: "Ann", email: "ann.duong@example.com")
ammar = User.create(name: "Ammar", email: "ammar.ali@example.com")
stephen = User.create(name: "Stephen", email: "stephen.yoon@example.com")
