# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# AdminUser.create!(email: 'buhler.jb.jb@gmail.com', password: 'adoeadeerafemaledeer', password_confirmation: 'adoeadeerafemaledeer') if Rails.env.development?

# BoardGame.create!(name: 'Agricola', min_players: 1, max_players: 5, play_time: '30 - 150 Minutes', price: 97.95, description: 'In Agricola, you are a farmer in a wooden shack with your spouse and little else. On a turn, you get to take only two actions, one for you and one for the spouse, from all the possibilities you will find on a farm: collecting clay, wood, or stone; building fences; and so on. You might think about having kids in order to get more work accomplished, but first you need to expand your house. And what are you going to feed all the little rugrats?', status: 'None', stock_quantity: 10)
#
# BoardGame.create!(name: 'Pandemic', min_players: 2, max_players: 4, play_time: '45 Minutes', price: 49.99, description: 'In Pandemic, several virulent diseases have broken out simultaneously all over the world! The players are disease-fighting specialists whose mission is to treat disease hotspots while researching cures for each of four plagues before they get out of hand.', status: 'On Sale', stock_quantity: 10)
#
# BoardGame.create!(name: 'Arkham Horror', min_players: 1, max_players: 8, play_time: '120 - 360 Minutes', price: 79.99, description: 'The year is 1926, and it is the height of the Roaring Twenties. Flappers dance till dawn in smoke-filled speakeasies drinking alcohol supplied by rum runners and the mob. It is a celebration to end all celebrations in the aftermath of the war to end all wars.', status: 'New', stock_quantity: 2)
#
# BoardGame.create!(name: 'Power Grid', min_players: 2, max_players: 6, play_time: '120 Minutes', price: 47.99, description: 'Power Grid is the updated release of the Friedemann Friese crayon game Funkenschlag. It removes the crayon aspect from network building in the original edition, while retaining the fluctuating commodities market like Crude: The Oil Game and an auction round intensity reminiscent of The Princes of Florence.', status: 'None', stock_quantity: 8)
#
# BoardGame.create!(name: 'Axis & Allies', min_players: 2, max_players: 5, play_time: '180 Minutes', price: 64.99, description: "Axis and Allies is the most successful of Milton Bradley's Gamemaster series.", status: "None", stock_quantity: 6)
#
# BoardGame.create!(name: 'Small World', min_players: 2 , max_players: 5, play_time: '40 - 80 Minutes', price: 59.99, description: 'In Small World, players vie for conquest and control of a world that is simply too small to accommodate them all.', status: 'On Sale', stock_quantity: 10)
#
# BoardGame.create!(name: 'Twilight Imperium (Third Edition)', min_players: 3, max_players: 6, play_time: '180 - 240 Minutes', price: 64.99, description: 'Twilight Imperium Third Edition is an epic empire-building game of interstellar conflict, trade, and struggle for power. Players take the roles of ancient galactic civilizations, each seeking to seize the imperial throne via warfare, diplomacy, and technological progression. With geomorphic board tiles, exquisite plastic miniatures, hundreds of cards, and introducing a rich set of strategic dimensions that allows each player to refocus their game-plan, the original designer Christian T. Petersen has seamlessly incorporated the better qualities of other recently popular games to improve on the game-play of the original TI, making it at once perfectly well-rounded and pleasantly familiar to experienced gamers.', status: 'None', stock_quantity: 9)
#
# BoardGame.create!(name: 'Scythe', min_players: 1, max_players: 5, play_time: '90 - 115 Minutes', price: 91.95, description: 'It is a time of unrest in 1920s Europa. The ashes from the first great war still darken the snow. The capitalistic city-state known simply as “The Factory”, which fueled the war with heavily armored mechs, has closed its doors, drawing the attention of several nearby countries.', status: 'On Sale', stock_quantity: 5)
#
# BoardGame.create!(name: 'Terra Mystica', min_players: 2, max_players: 5, play_time: '60 - 150 Minutes', price: 99.99, description: 'In the land of Terra Mystica dwell 14 different peoples in seven landscapes, and each group is bound to its own home environment, so to develop and grow, they must terraform neighboring landscapes into their home environments in competition with the other groups.', status: 'None', stock_quantity: 3)
#
# BoardGame.create!(name: 'Blood Rage', min_players: 2, max_players: 4, play_time: '60 - 90 Minutes', price: 76.95, description: 'Life is Battle; Battle is Glory; Glory is ALL', status: 'New', stock_quantity: 18)
#
# BoardGame.create!(name: 'Lords of Waterdeep', min_players: 2, max_players: 5, play_time: '60 - 120 Minutes', price: '49.99', description: 'Waterdeep, the City of Splendors – the most resplendent jewel in the Forgotten Realms, and a den of political intrigue and shady back-alley dealings. In this game, the players are powerful lords vying for control of this great city. Its treasures and resources are ripe for the taking, and that which cannot be gained through trickery and negotiation must be taken by force!', status: 'None', stock_quantity: 5)

Province.create!(name: 'Alberta', gst: 0.05 , pst: 0, hst: 0 )
Province.create!(name: 'British Columbia', gst: 0.05 , pst: 0.07, hst: 0 )
Province.create!(name: 'Manitoba', gst: 0.05 , pst: 0.08, hst: 0 )
Province.create!(name: 'New Brunswick', gst: 0 , pst: 0, hst: 0.15 )
Province.create!(name: 'Newfoundland and Labrador', gst: 0 , pst: 0, hst: 0 )
Province.create!(name: 'Northwest Territories', gst: 0.05 , pst: 0, hst: 0.15 )
Province.create!(name: 'Nova Scotia', gst: 0 , pst: 0, hst: 0.15 )
Province.create!(name: 'Nunavut', gst: 0.05 , pst: 0, hst: 0 )
Province.create!(name: 'Ontario', gst: 0 , pst: 0, hst: 0.13 )
Province.create!(name: 'Prince Edward Island', gst: 0 , pst: 0, hst: 0.15 )
Province.create!(name: 'Quebec', gst: 0 , pst: 0, hst: 0.14975 )
Province.create!(name: 'Saskatchewan', gst: 0.05 , pst: 0.05, hst: 0 )
Province.create!(name: 'Yukon', gst: 0.05 , pst: 0, hst: 0 )
