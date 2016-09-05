# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
fixtures_path = Rails.root.join('app', 'assets', 'images', 'fixtures')
User.create(name: "Admin", phone: "055500000", address: "bishkek", 
			email: "admin@example.com", password:"123456", admin: true)
burger = Restaurant.create!(name: "Burger Club", 
		 description: "Адрес: пр. Чуй / ул. Исанова, ул. Ахунбаева, пер. ул. Малдыбаева",
		 image: File.new(fixtures_path.join('burger.png')))
buhara = Restaurant.create!(name: "Ассорти Бухара", 
		 description: "Ассорти Бухара - современная узбекская кухня с широким ассортиментом блюд европейской кухни",
		 image: File.new(fixtures_path.join('buhara.png')))
Food.create!(name: "Чикен бургер", description: "Легкий сэндвич с нежной куриной котлетой",
			price: 95, restaurant_id: burger.id)
Food.create!(name: "Чизбургер де люкс", description: "100 % говяжья котлета",
			price: 135, restaurant_id: burger.id)
Food.create!(name: "Роял бургер клаб", description: "Элитный сэндвич с тремя вкуснейшими котлетами",
			price: 235, restaurant_id: burger.id)
Food.create!(name: "Куурдак", description: "мякоть баранины, картофель, лук репчатый, 250 гр",
			price: 260, restaurant_id: buhara.id)
Food.create!(name: "Самсы бухарские", description: "ну очень вкусно ! пальчики оближешь ! 1 шт.",
			price: 50, restaurant_id: buhara.id)
Food.create!(name: "Казан-кабоб из каре барашка", description: "нежнейшие бараньи ребра ",
			price: 260, restaurant_id: buhara.id)

