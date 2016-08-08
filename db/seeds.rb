# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

["users", "things", "tags", "tags_things", "things_users"].each do |table_name|
  ActiveRecord::Base.connection.execute("TRUNCATE #{table_name} RESTART IDENTITY CASCADE")
end

# Users
user1 = User.create(username: "will", first_name: "Will", last_name: "Cookie", contact_number: "0123434553", email: "will@will.com", profile_image: "", password: "password", password_confirmation: "password")

user2 = User.create(username: "mickyg", first_name: "Mike", last_name: "Hayden", contact_number: "0123434553", email: "mike@ga.co", profile_image: "", password: "password", password_confirmation: "password")

tag1 = Tag.create(name: "Antiques & collectables")
tag2 = Tag.create(name: "Art")
tag3 = Tag.create(name: "Baby Gear")
tag4 = Tag.create(name: "Books")
tag5 = Tag.create(name: "Childrens Toys")
tag6 = Tag.create(name: "Building & Renovation")
tag7 = Tag.create(name: "Business & Industry")
tag8 = Tag.create(name: "Cars, Bikes & Boats")
tag9 = Tag.create(name: "Clothing & Fashion")
tag10 = Tag.create(name: "Electronics, Photography & Gaming")
tag11 = Tag.create(name: "Health & Beauty")
tag12 = Tag.create(name: "Home & Living")
tag13 = Tag.create(name: "Movies & TV Shows")
tag14 = Tag.create(name: "Music & Instruments")
tag15 = Tag.create(name: "Pets & Animals")
tag16 = Tag.create(name: "Pottery & glass")
tag17 = Tag.create(name: "Real Estate & Meeting Rooms")
tag18 = Tag.create(name: "Sports Equipment")
tag19 = Tag.create(name: "Toys & Models")
tag20 = Tag.create(name: "Travel, Events & Activities")
tag21 = Tag.create(name: "Miscellaneous")

thing1 = Thing.create(title: "New thing", description: "Its amazing", user_id: user1.id, thing_images: ["http://www.fillmurray.com//300/300"])                                                                                                           
