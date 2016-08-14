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
user1 = User.create(username: "will", first_name: "Will", last_name: "Cookie", contact_number: "0123434553", email: "will@will.com", profile_image: File.open(Rails.root.to_s + "/db/images/profile/26.jpg"), password: "password", password_confirmation: "password")

user2 = User.create(username: "John", first_name: "John", last_name: "Doe", contact_number: "0923499745", email: "john@doefamily.com", profile_image: File.open(Rails.root.to_s + "/db/images/profile/johndoe.jpg"), password: "password", password_confirmation: "password")

user3 = User.create(username: "Marge", first_name: "Marge", last_name: "Simpson", contact_number: "0183466427", email: "marge@simpsons.com", profile_image: File.open(Rails.root.to_s + "/db/images/profile/1.jpg"), password: "password", password_confirmation: "password")

user4 = User.create(username: "James", first_name: "James", last_name: "Dean", contact_number: "0120404281", email: "jd@dean.com", profile_image: File.open(Rails.root.to_s + "/db/images/profile/3.jpg"), password: "password", password_confirmation: "password")

user5 = User.create(username: "Marilyn", first_name: "Marilyn", last_name: "Monroe", contact_number: "0443424381", email: "marilyn_monroe@stars.com", profile_image: File.open(Rails.root.to_s + "/db/images/profile/2.jpg"), password: "password", password_confirmation: "password")

user6 = User.create(username: "Leo", first_name: "Leonardo", last_name: "da Vinci", contact_number: "0165488457", email: "leo@davinci.com", profile_image: File.open(Rails.root.to_s + "/db/images/profile/5.jpg"), password: "password", password_confirmation: "password")

user7 = User.create(username: "Pablo", first_name: "Pablo", last_name: "Picasso", contact_number: "0483434553", email: "pablo@artists.com", profile_image: File.open(Rails.root.to_s + "/db/images/profile/7.jpg"), password: "password", password_confirmation: "password")

user8 = User.create(username: "Henry", first_name: "Henry", last_name: "Ford", contact_number: "3463424871", email: "ford@ford.com", profile_image: File.open(Rails.root.to_s + "/db/images/profile/8.jpg"), password: "password", password_confirmation: "password")

user9 = User.create(username: "Coco", first_name: "Coco", last_name: "Chanel", contact_number: "9513472001", email: "chanel@no5.com", profile_image: File.open(Rails.root.to_s + "/db/images/profile/4.jpg"), password: "password", password_confirmation: "password")

user10 = User.create(username: "Grace", first_name: "Grace", last_name: "Kelly", contact_number: "7783466134", email: "grace@monaco.com", profile_image: File.open(Rails.root.to_s + "/db/images/profile/6.jpg"), password: "password", password_confirmation: "password")

user11 = User.create(username: "Babe", first_name: "Babe", last_name: "Ruth", contact_number: "0103411274", email: "babe@baseball.com", profile_image: File.open(Rails.root.to_s + "/db/images/profile/9.jpg"), password: "password", password_confirmation: "password")

user12 = User.create(username: "Jax", first_name: "Jacqui", last_name: "Onassis", contact_number: "1313400100", email: "jax@onassis.com", profile_image: File.open(Rails.root.to_s + "/db/images/profile/10.jpg"), password: "password", password_confirmation: "password")

user13 = User.create(username: "Ed", first_name: "Edmund", last_name: "Hillary", contact_number: "8283472413", email: "everest@everest.com", profile_image: File.open(Rails.root.to_s + "/db/images/profile/12.jpg"), password: "password", password_confirmation: "password")

user14 = User.create(username: "Margaret", first_name: "Margaret", last_name: "Thatcher", contact_number: "0593404167", email: "ironlady@uk.com", profile_image: File.open(Rails.root.to_s + "/db/images/profile/11.jpg"), password: "password", password_confirmation: "password")

user15 = User.create(username: "Daffy", first_name: "Daffy", last_name: "Duck", contact_number: "0563424581", email: "daffy@duckenterprises.com", profile_image: File.open(Rails.root.to_s + "/db/images/profile/13.jpg"), password: "password", password_confirmation: "password")

user16 = User.create(username: "Cruella", first_name: "Cruella", last_name: "Deville", contact_number: "1473406422", email: "cruella@dalmations.com", profile_image: File.open(Rails.root.to_s + "/db/images/profile/14.jpg"), password: "password", password_confirmation: "password")

user17 = User.create(username: "Betty", first_name: "Betty", last_name: "Boop", contact_number: "9633417354", email: "bb@boop.com", profile_image: File.open(Rails.root.to_s + "/db/images/profile/16.jpg"), password: "password", password_confirmation: "password")

user18 = User.create(username: "Buzz", first_name: "Buzz", last_name: "Lightyear", contact_number: "6243488147", email: "buzz@toystory.com", profile_image: File.open(Rails.root.to_s + "/db/images/profile/15.jpg"), password: "password", password_confirmation: "password")

user19 = User.create(username: "Chris", first_name: "Christopher", last_name: "Columbus", contact_number: "4283444627", email: "chrisc@america.com", profile_image: File.open(Rails.root.to_s + "/db/images/profile/18.jpg"), password: "password", password_confirmation: "password")

user20 = User.create(username: "Billie", first_name: "Billie", last_name: "Holiday", contact_number: "9513444588", email: "billie@holiday.com", profile_image: File.open(Rails.root.to_s + "/db/images/profile/19.jpg"), password: "password", password_confirmation: "password")

user21 = User.create(username: "Elvis", first_name: "Elvis", last_name: "Presley", contact_number: "7533448211", email: "elvis@theking.com", profile_image: File.open(Rails.root.to_s + "/db/images/profile/20.jpg"), password: "password", password_confirmation: "password")

user22 = User.create(username: "Neil", first_name: "Neil", last_name: "Armstrong", contact_number: "4563485214", email: "neil@spaceman.com", profile_image: File.open(Rails.root.to_s + "/db/images/profile/21.jpg"), password: "password", password_confirmation: "password")

user23 = User.create(username: "Julia", first_name: "Julia", last_name: "Child", contact_number: "4233400474", email: "jc@cooking.com", profile_image: File.open(Rails.root.to_s + "/db/images/profile/17.jpg"), password: "password", password_confirmation: "password")

user24 = User.create(username: "David", first_name: "David", last_name: "Bowie", contact_number: "6543444588", email: "ziggy@stardust.com", profile_image: File.open(Rails.root.to_s + "/db/images/profile/22.jpg"), password: "password", password_confirmation: "password")

user25 = User.create(username: "Al", first_name: "Alfred", last_name: "Hitchcock", contact_number: "9873439725", email: "ah@scream.com", profile_image: File.open(Rails.root.to_s + "/db/images/profile/24.jpg"), password: "password", password_confirmation: "password")

user26 = User.create(username: "mickyg", first_name: "Mike", last_name: "Hayden", contact_number: "0123434553", email: "mike@ga.co", profile_image: File.open(Rails.root.to_s + "/db/images/profile/25.jpg"), password: "password", password_confirmation: "password")


# Tags
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

# Things

thing1 = Thing.create(title: "Ladder", description: "Aluminimum Ladder, got paint splashes on it but otherwise works like new. It's probably too big to fit in most cars so you will need to walk it places. It is handy for getting the leaves out of the gutter in Autumn, other than that it sits in my house gathering dust, if you can put it to use then get in touch :)", user_id: 1, thing_images: [File.open(Rails.root.to_s + "/db/images/ladder.jpg")], tag_ids: [tag12.id, tag6.id])

thing2 = Thing.create(title: "Lawnmower", description: "Petrol Lawnmower. Free to use just return it with the petrol can full. Let me know if there is anything wrong with it. Happy to sort something out for a long term rental.", user_id: 1, thing_images: [File.open(Rails.root.to_s + "/db/images/lawnmower.jpg")], tag_ids: [tag12.id, tag6.id])

thing3 = Thing.create(title: "Baseball bat", description: "Wooden baseball bat, I also have a ball if you would like that too.", user_id: 2, thing_images: [File.open(Rails.root.to_s + "/db/images/baseballbat.jpg")], tag_ids: [tag18.id])

thing4 = Thing.create(title: "Trolley", description: "Handy trolley for moving house or business. Wheels work well on flat paths. Save your back. Happy to loan it to you for a bag of haribo", user_id: 4, thing_images: [File.open(Rails.root.to_s + "/db/images/trolly.png")], tag_ids: [tag21.id, tag12.id, tag7.id])

thing5 = Thing.create(title: "Outdoor chairs", description: "Folding chairs. I've spent hours sitting in these. I have 4x of these chairs. I also have a cooler if you really want the whole beach kit!", user_id: 6, thing_images: [File.open(Rails.root.to_s + "/db/images/deck-chair.jpg")], tag_ids: [tag12.id])

thing6 = Thing.create(title: "Guitar", description: "My Ex played guitar. I kept it to piss him off. Feel free to borrow it when your friend comes to town so you can jam. It comes with a case so you can travel around with it. My only rule is that if you take it you tune it. I don't know a thing about how to do that", user_id: 23, thing_images: [File.open(Rails.root.to_s + "/db/images/guitar.jpg")], tag_ids: [tag14.id])

thing7 = Thing.create(title: "Lord of the rings books", description: "The return of the king, The two towers, and The fellowship of the ring. Borrow one, borrow some or borrow them all. All I ask is a recommendation for a new book. A hard copy is so much better", user_id: 12, thing_images: [File.open(Rails.root.to_s + "/db/images/lotrbooks.jpg")], tag_ids: [tag1.id, tag2.id, tag4.id])

thing8 = Thing.create(title: "Hammer Drill", description: "Large 240v Bosch HammerDrill. Powerful enough for a good days work. Comes with the case and a handful of various bits. The bits are a range of sizes and conditions. If you have a special job you might want to get your own SDS+ bits. Please note that this is a 240v drill. The plug is a standard uk plug. This is NOT 110v! I drink beer, how much depends on you. I also have an 
  rcd if your going to be working near water", user_id: 12, thing_images: [File.open(Rails.root.to_s + "/db/images/largedrill.jpg")], tag_ids: [tag6.id])

thing9 = Thing.create(title: "Electric Breaker", description: "This just sits in my garage gathering dust. I never get to use it as much as I woud like to. Happy to share the joy of this bad boy. I can drop it off too if you want (although I may want to use it!). Comes with an extension lead if you want. Note this is a 240v one", user_id: 18, thing_images: [File.open(Rails.root.to_s + "/db/images/breaker.jpg")], tag_ids: [tag6.id ,tag7.id])

thing10 = Thing.create(title: "BBQ", description: "Red Weber Charcoal BBQ. This can be wheeled alog to your local park or used on your balcony. It comes with BBQ tools and a suitably unsuitable apron if you want them. Flick me a message, happy to share this out as it sits around most of the time. Would love to see it get used more. I'll loan it for a recipe, bring your best!", user_id: 12, thing_images: [File.open(Rails.root.to_s + "/db/images/backyard-bbq.jpg")], tag_ids: [tag12.id ,tag20.id])























                                                                                                        
