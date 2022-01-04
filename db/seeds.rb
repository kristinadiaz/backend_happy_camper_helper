puts "🌱 Seeding spices..."

# Items
#winter Items
Item.create(name: , description: , shopping_url:)
Item.create(name: , description: , shopping_url:)
Item.create(name: , description: , shopping_url:)
Item.create(name: , description: , shopping_url:)
Item.create(name: , description: , shopping_url:)
Item.create(name: , description: , shopping_url:)
Item.create(name: , description: , shopping_url:)
Item.create(name: , description: , shopping_url:)
Item.create(name: , description: , shopping_url:)
Item.create(name: , description: , shopping_url:)
Item.create(name: , description: , shopping_url:)
Item.create(name: , description: , shopping_url:)
Item.create(name: , description: , shopping_url:)
Item.create(name: , description: , shopping_url:)
Item.create(name: , description: , shopping_url:)
Item.create(name: , description: , shopping_url:)
Item.create(name: , description: , shopping_url:)
Item.create(name: , description: , shopping_url:)
Item.create(name: , description: , shopping_url:)
Item.create(name: , description: , shopping_url:)
Item.create(name: , description: , shopping_url:)
Item.create(name: , description: , shopping_url:)
Item.create(name: , description: , shopping_url:)
Item.create(name: , description: , shopping_url:)
Item.create(name: , description: , shopping_url:)
Item.create(name: , description: , shopping_url:)
Item.create(name: , description: , shopping_url:)
Item.create(name: , description: , shopping_url:)

# Trails
berkey_creek_falls_trail = Trail.create(
    trail_name: "Berry Creek Falls Trail, Berekley, CA", 
    trail_url: "https://www.hikingproject.com/trail/7019500/berry-creek-falls-loop"
    )
Trail.create(
    trail_name: "Lower Yosemite Fall Trail, Yosemite Valley, CA", 
    trail_url: "https://www.hikingproject.com/trail/7004501/lower-yosemite-fall-trail"
    )
Trail.create(
    trail_name: "Fortynine Palms Oasis, Joshua Tree, CA", 
    trail_url: "https://www.hikingproject.com/trail/7016749/fortynine-palms-oasis-trail"
    )
Trail.create(
    trail_name: "Waterfall Overlook Trail, Big Sur, CA", 
    trail_url: "https://www.hikingproject.com/trail/7003458/waterfall-overlook-trail"
    )
Trail.create(
    trail_name: "James Irvine Trail, Redwood National Park, CA",
    trail_url: "https://www.hikingproject.com/trail/7017301/james-irvine-trail"
    )
Trail.create(
    trail_name: "Mount Falcon Trail, Morrison, CO",
    trail_url: "https://www.hikingproject.com/trail/7003096/mount-falcon-west-loop"
    )
Trail.create(
    trail_name: "Mount Sanitas , Boulder, CO",
    trail_url: "https://www.hikingproject.com/trail/7000000/mount-sanitas-loop"
    )
Trail.create(
    trail_name: "Mount Evans, Clear Creek County, CO",
    trail_url: "https://www.hikingproject.com/trail/7002239/mt-evans-route"
    )
Trail.create(
    trail_name: "Royal Arch Trail, Boulder, CO", 
    trail_url: "https://www.hikingproject.com/trail/7000331/royal-arch-trail"
    )
Trail.create(
    trail_name: "Mesa Trail, Boulder, CO", 
    trail_url: "https://www.hikingproject.com/trail/7000068/mesa-trail"
    )
Trail.create(
    trail_name: "Billy Goat Trail C Loop, Great Falls, VA", 
    trail_url: "https://www.hikingproject.com/trail/7082259/billy-goat-trail-c-loop"
    )
Trail.create(
    trail_name: "Saddle Canyon Hike, Grand Canyon, AZ ", 
    trail_url: "https://www.hikingproject.com/trail/7003278/saddle-canyon"
    )
Trail.create(
    trail_name: "SugarLoaf Loop, Urbana, MD", 
    trail_url: "https://www.hikingproject.com/trail/7087821/sugarloaf-loop"
    )
Trail.create(
    trail_name: "Hurrican Ridge, Olympic Peninsula, WA", 
    trail_url: "https://www.hikingproject.com/gem/236/hurricane-ridge"
    )
Trail.create(
    trail_name: "Devils Kitchen to Elephant Canyon Trail, Canyonlands National Park, UT", 
    trail_url: "https://www.hikingproject.com/trail/7014646/devils-kitchen-to-elephant-canyon-trail"
    )

# Seasons
fall = Season.create(season_name: "Fall", degree: , item_id: , trail_id:)
winter = Season.create(season_name: "Winter", degree: , item_id: , trail_id:)
spring = Season.create(season_name: "Spring", degree: , item_id: , trail_id:)
summer = Season.create(season_name: "Summer", degree: , item_id: , trail_id:)


puts "✅ Done seeding!"
