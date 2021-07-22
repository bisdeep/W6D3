# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Artwork.destroy_all
ArtworkShare.destroy_all


user1 = User.create!(username: "deep@thedeepone.com")
user2 = User.create!(username: "dustin@mastersoftheuniverse.com")
user3 = User.create!(username: "depshallburn")
user4 = User.create!(username: "batman")
user5 = User.create!(username: "superman")
user6 = User.create!(username: "spiderman")




artwork1 = Artwork.create!(title: "Thinker", image_url: "thinker123", artist_id: user1.id)
artwork2 = Artwork.create!(title: "Starry Nights", image_url: "StarryNights123", artist_id: user2.id)
artwork3 = Artwork.create!(title: "Canis Lupus", image_url: "CanisLupus123", artist_id: user3.id)
artwork4 = Artwork.create!(title: "Doges Coinys", image_url: "DogesCoinys123", artist_id: user4.id)
artwork5 = Artwork.create!(title: "ArachnidMan", image_url: "ArachnidMan123", artist_id: user5.id)


share1 = ArtworkShare.create!(viewer_id: user1.id, artwork_id: artwork1.id)
share2 = ArtworkShare.create!(viewer_id: user1.id, artwork_id: artwork4.id)
share3 = ArtworkShare.create!(viewer_id: user2.id, artwork_id: artwork4.id)
share4 = ArtworkShare.create!(viewer_id: user2.id, artwork_id: artwork5.id)
share5 = ArtworkShare.create!(viewer_id: user3.id, artwork_id: artwork2.id)
share6 = ArtworkShare.create!(viewer_id: user4.id, artwork_id: artwork3.id)
share7 = ArtworkShare.create!(viewer_id: user6.id, artwork_id: artwork5.id)
share8 = ArtworkShare.create!(viewer_id: user5.id, artwork_id: artwork3.id)
share9 = ArtworkShare.create!(viewer_id: user5.id, artwork_id: artwork5.id)