puts "Deleting Trail/Season data..."
Trail.destroy_all
Season.destroy_all
puts "...new slate created!"


puts "🌱 Seeding data:"

# Trails
puts "Creating trails..."
berkey_creek_falls_trail = Trail.create(
    trail_name: "Berry Creek Falls Trail, Berekley, CA", 
    trail_url: "https://www.hikingproject.com/trail/7019500/berry-creek-falls-loop"
)
lower_yosemite_fall_trail = Trail.create(
    trail_name: "Lower Yosemite Fall Trail, Yosemite Valley, CA", 
    trail_url: "https://www.hikingproject.com/trail/7004501/lower-yosemite-fall-trail"
)
forynine_palms_oasis_trail = Trail.create(
    trail_name: "Fortynine Palms Oasis, Joshua Tree, CA", 
    trail_url: "https://www.hikingproject.com/trail/7016749/fortynine-palms-oasis-trail"
)
waterfall_overlook_trail = Trail.create(
    trail_name: "Waterfall Overlook Trail, Big Sur, CA", 
    trail_url: "https://www.hikingproject.com/trail/7003458/waterfall-overlook-trail"
)
jasmine_irvine_trail = Trail.create(
    trail_name: "James Irvine Trail, Redwood National Park, CA",
    trail_url: "https://www.hikingproject.com/trail/7017301/james-irvine-trail"
)
mount_falcon_trail = Trail.create(
    trail_name: "Mount Falcon Trail, Morrison, CO",
    trail_url: "https://www.hikingproject.com/trail/7003096/mount-falcon-west-loop"
)
mount_sanitas = Trail.create(
    trail_name: "Mount Sanitas , Boulder, CO",
    trail_url: "https://www.hikingproject.com/trail/7000000/mount-sanitas-loop"
)
mount_evans = Trail.create(
    trail_name: "Mount Evans, Clear Creek County, CO",
    trail_url: "https://www.hikingproject.com/trail/7002239/mt-evans-route"
)
royal_arch_trail = Trail.create(
    trail_name: "Royal Arch Trail, Boulder, CO", 
    trail_url: "https://www.hikingproject.com/trail/7000331/royal-arch-trail"
)
mesa_trail = Trail.create(
    trail_name: "Mesa Trail, Boulder, CO", 
    trail_url: "https://www.hikingproject.com/trail/7000068/mesa-trail"
)
billy_goat_trail = Trail.create(
    trail_name: "Billy Goat Trail C Loop, Great Falls, VA", 
    trail_url: "https://www.hikingproject.com/trail/7082259/billy-goat-trail-c-loop"
)
saddle_canyon_hike = Trail.create(
    trail_name: "Saddle Canyon Hike, Grand Canyon, AZ ", 
    trail_url: "https://www.hikingproject.com/trail/7003278/saddle-canyon"
)
sugarloaf_loop = Trail.create(
    trail_name: "SugarLoaf Loop, Urbana, MD", 
    trail_url: "https://www.hikingproject.com/trail/7087821/sugarloaf-loop"
)
hurricane_ridge = Trail.create(
    trail_name: "Hurrican Ridge, Olympic Peninsula, WA", 
    trail_url: "https://www.hikingproject.com/gem/236/hurricane-ridge"
)
devils_kitchen_trail = Trail.create(
    trail_name: "Devils Kitchen to Elephant Canyon Trail, Canyonlands National Park, UT", 
    trail_url: "https://www.hikingproject.com/trail/7014646/devils-kitchen-to-elephant-canyon-trail"
)
puts "...completed trails!"


# Seasons
puts "Creating seasons..."
fall = Season.create(season_name: "Fall")
winter = Season.create(season_name: "Winter")
spring = Season.create(season_name: "Spring")
summer = Season.create(season_name: "Summer")
puts "...completed seasons!"

# Items
puts "Creating items..."

# Fall Items
Item.create(
    name: "Sleeping Bag", 
    description: "20 degree sleeping bag", 
    shopping_url: "https://www.rei.com/product/193015/rei-co-op-hunkerdown-20-sleeping-bag",
    image_url: "https://www.rei.com/media/f3f1356a-658a-4971-8cc4-4b4148939973?size=784x588",
    season_id: fall.id,
    trail_id: forynine_palms_oasis_trail.id
)
Item.create(
    name: "Tent", 
    description: "4-person tent", 
    shopping_url: "https://www.rei.com/product/199760/kelty-wireless-4-tent",
    image_url: "https://www.rei.com/media/2ea0e6a1-bbe9-4b74-827f-6af78db91acb?size=784x588",
    season_id: fall.id,
    trail_id: mesa_trail.id
)
Item.create(
    name: "Lighter", 
    description: "Pocket torch with refillable gas", 
    shopping_url: "https://www.rei.com/product/148567/soto-pocket-torch-with-refillable-lighter",
    image_url: "https://www.rei.com/media/59abc141-f25c-4710-ac8f-1288e5ca198a?size=784x588",
    season_id: fall.id,
    trail_id: saddle_canyon_hike.id
)
Item.create(
    name: "Sleeping Pad", 
    description: "Megamat 10 sleeping pad", 
    shopping_url: "https://www.rei.com/product/113719/exped-megamat-10-sleeping-pad",
    image_url: "https://www.rei.com/media/e3924a32-f53c-4b7b-a54e-0bcf0d02fad0?size=784x588",
    season_id: fall.id,
    trail_id: forynine_palms_oasis_trail.id
)
Item.create(
    name: "First Aid Kit", 
    description: "Mountain series medical kits", 
    shopping_url: "https://www.rei.com/product/113008/adventure-medical-kits-mountain-series-explorer-medical-kit",
    image_url: "https://www.rei.com/media/865435d7-b6ad-42d7-bdad-e736ed1feeb2?size=784x588",
    season_id: fall.id,
    trail_id: mesa_trail.id
)
Item.create(
    name: "Portable Grill", 
    description: "Camp chef high pressure stove", 
    shopping_url: "https://www.rei.com/product/191171/camp-chef-everest-2x-high-pressure-stove",
    image_url: "https://www.rei.com/media/0e0faae4-34e3-471f-ace8-b70bcd886e36?size=784x588",
    season_id: fall.id,
    trail_id: saddle_canyon_hike.id
)
Item.create(
    name: "Propane Tanks", 
    description: "MSR isopro fuel cannister", 
    shopping_url: "https://www.rei.com/product/868221/msr-isopro-fuel-canister-16-oz-450g",
    image_url: "https://www.rei.com/media/2e028a81-397c-42e6-ad00-d72e14bf3620?size=784x588",
    season_id: fall.id,
    trail_id: forynine_palms_oasis_trail.id
)
Item.create(
    name: "Lights", 
    description: "Sol camp lantern", 
    shopping_url: "https://www.rei.com/product/199837/sol-camp-lantern-3d",
    image_url: "https://www.rei.com/media/31367c69-e487-4602-a0cb-8a5f1b5d1e20?size=784x588",
    season_id: fall.id,
    trail_id: mesa_trail.id
)
Item.create(
    name: "Blanket", 
    description: "Rumpl original puffy recycled blanket", 
    shopping_url: "https://www.rei.com/product/169984/rumpl-original-puffy-recycled-blanket-sunset-fade",
    image_url: "https://www.rei.com/media/4c377466-675b-4e6f-acb3-a024f35265de?size=784x588",
    season_id: fall.id,
    trail_id: saddle_canyon_hike.id
)
Item.create(
    name: "Multi-tool Knife", 
    description: "Leatherman wave multi-tool", 
    shopping_url: "https://www.rei.com/product/136739/leatherman-wave-plus-multi-tool",
    image_url: "https://www.rei.com/media/912b5e0f-1df5-4cf5-96b6-03c4869a17f7?size=784x588",
    season_id: fall.id,
    trail_id: forynine_palms_oasis_trail.id
)
Item.create(
    name: "Utensils", 
    description: "3 piece stainless steel utensil set", 
    shopping_url: "https://www.rei.com/rei-garage/product/207798/coleman-3-piece-stainless-steel-nesting-utensil-set",
    image_url: "https://www.rei.com/media/d797296f-d511-4eb9-914c-957df1e3d360",
    season_id: fall.id,
    trail_id: mesa_trail.id
)
Item.create(
    name: "Cookware", 
    description: "Stanley adventure base camp cookset", 
    shopping_url: "https://www.rei.com/product/149217/stanley-adventure-base-camp-cookset-4",
    image_url: "https://www.rei.com/media/19335b7d-57af-4803-a673-0cc0cba8ca1d?size=784x588",
    season_id: fall.id,
    trail_id: saddle_canyon_hike.id
)
Item.create(
    name: "Batteries", 
    description: "4-pack AA batteries", 
    shopping_url: "https://www.target.com/p/duracell-coppertop-aa-batteries-4-pack-alkaline-battery/-/A-13657979?ref=tgt_adv_XS000000&AFID=google_pla_df&fndsrc=tmnv&DFA=71700000083356537&CPNG=PLA_DVM%2B0066S00000wXfznQAC-Duracell_AO_GoogleSearch_CopperTop_2021_Flight&adgroup=PLA_Duracell+Coppertop&LID=700000001393753pgs&network=g&device=c&location=9061258&gclid=Cj0KCQiA2sqOBhCGARIsAPuPK0j_5QLql40YXxzZ1Yl9FftZqxXj4VEAiunepCdOuDeIP1nGfxLSrJ8aAmrhEALw_wcB&gclsrc=aw.ds",
    image_url: "https://target.scene7.com/is/image/Target/GUEST_5c26b3e1-1555-4060-9bf4-075fd27a21a3?wid=325&hei=325&qlt=80&fmt=webp",
    season_id: fall.id,
    trail_id: forynine_palms_oasis_trail.id
)
Item.create(
    name: "Cooler", 
    description: "Camping rolling cooler", 
    shopping_url: "https://www.amazon.com/Wheeled-Camping-Rolling-Cooler-Wheels/dp/B07KJMV2SH",
    image_url: "https://m.media-amazon.com/images/I/71zRgEPai9L._AC_SL1500_.jpg",
    season_id: fall.id,
    trail_id: mesa_trail.id
)
Item.create(
    name: "Camping Chairs", 
    description: "Outdoor camping chair with 2 cup holders", 
    shopping_url: "https://www.rei.com/product/179776/gci-outdoor-comfort-pro-chair",
    image_url: "https://www.rei.com/media/f83137ae-4dbb-4b7d-a8e1-ecdf72c8d5ad?size=784x588",
    season_id: fall.id,
    trail_id: saddle_canyon_hike.id
)


# Winter Items
Item.create(
    name: "Sleeping Bag", 
    description: "0 degree weather sleeping bag", 
    shopping_url: "https://www.rei.com/product/152790/sea-to-summit-ascent-aciii-0-sleeping-bag",
    image_url: "https://www.rei.com/media/e9e393e9-2bb9-44f6-9720-f75df825f8b6?size=784x588",
    season_id: winter.id,
    trail_id: berkey_creek_falls_trail.id
)
Item.create(
    name: "Tent", 
    description: "3-person tent with footprint for winter", 
    shopping_url: "https://www.rei.com/product/185633/rei-co-op-half-dome-sl-3-tent-with-footprint",
    image_url: "https://www.rei.com/media/15b0c594-e032-4d5f-948d-6263af7209c3?size=784x588",
    season_id: winter.id,
    trail_id: mount_falcon_trail.id
)
Item.create(
    name: "Lighter", 
    description: "Windproof lighter", 
    shopping_url: "https://www.rei.com/product/838513/zippo-windproof-lighter",
    image_url: "https://www.rei.com/media/af88e6dd-a618-43d2-a262-c4af47e2e585?size=784x588",
    season_id: winter.id,
    trail_id: hurricane_ridge.id
)
Item.create(
    name: "Sleeping Pad", 
    description: "1-person sleeping pad", 
    shopping_url: "https://www.rei.com/product/188370/sea-to-summit-ether-light-xt-extreme-sleeping-pad",
    image_url: "https://www.rei.com/media/88661247-231e-4d5d-b2ba-a059912abfc7?size=784x588",
    season_id: winter.id,
    trail_id: berkey_creek_falls_trail.id
)
Item.create(
    name: "First Aid Kit", 
    description: "Outdoor extended first aid kit", 
    shopping_url: "https://www.rei.com/product/132222/hart-outdoor-extended-first-aid-kit",
    image_url: "https://www.rei.com/media/a403ab2f-04e6-4835-be22-af1da1575b46?size=784x588",
    season_id: winter.id,
    trail_id: mount_falcon_trail.id
)
Item.create(
    name: "Portable Grill", 
    description: "Eureka camp stove", 
    shopping_url: "https://www.rei.com/product/187621/eureka-sprk-camp-stove",
    image_url: "https://www.rei.com/media/aedd0cdf-2d59-4fce-bf40-56cfc32fe5a0?size=784x588",
    season_id: winter.id,
    trail_id: hurricane_ridge.id
)
Item.create(
    name: "Propane Tanks", 
    description: "Jetboil Fuel", 
    shopping_url: "https://www.rei.com/product/814244/jetboil-jetpower-fuel-16-oz-450g",
    image_url: "https://www.rei.com/media/67d92ea3-abcb-41ab-8ec5-5977bedf742e?size=784x588",
    season_id: winter.id,
    trail_id: berkey_creek_falls_trail.id
)
Item.create(
    name: "Lights", 
    description: "Rechargable lantern", 
    shopping_url: "https://www.rei.com/product/170355/lander-boulder-rechargeable-lantern-power-bank",
    image_url: "https://www.rei.com/media/e826440c-d359-4c93-8169-f20633ad7551?size=784x588",
    season_id: winter.id,
    trail_id: mount_falcon_trail.id
)
Item.create(
    name: "Blanket", 
    description: "Rumpl NanoLoft Puffy Blanket - Crisp Fade", 
    shopping_url: "https://www.rei.com/product/160290/rumpl-nanoloft-puffy-blanket-crisp-fade",
    image_url: "https://www.rei.com/media/7b2c761c-3066-45bc-a9cf-382d17f750ba?size=784x588",
    season_id: winter.id,
    trail_id: hurricane_ridge.id
)
Item.create(
    name: "Hand Warmers", 
    description: "Ignik Hand Warmers - 1 Pair", 
    shopping_url: "https://www.rei.com/product/198606/ignik-hand-warmers-1-pair",
    image_url: "https://www.rei.com/media/7e835dcb-06bc-4151-a569-30719c82831a?size=784x588",
    season_id: winter.id,
    trail_id: berkey_creek_falls_trail.id
)
Item.create(
    name: "Multi-tool Knife", 
    description: "Leatherman Skeletool CX Multi-Tool", 
    shopping_url: "https://www.rei.com/product/762082/leatherman-skeletool-cx-multi-tool",
    image_url: "https://www.rei.com/media/5e485734-3cbc-440c-8955-6c5bb94c7896?size=784x588",
    season_id: winter.id,
    trail_id: mount_falcon_trail.id
)
Item.create(
    name: "Utensils", 
    description: "3-piece stainless steel nesting untensil set", 
    shopping_url: "https://www.rei.com/rei-garage/product/207798/coleman-3-piece-stainless-steel-nesting-utensil-set",
    image_url: "https://www.rei.com/media/d797296f-d511-4eb9-914c-957df1e3d360",
    season_id: winter.id,
    trail_id: hurricane_ridge.id
)
Item.create(
    name: "Cookware", 
    description: "GSI outdoors pinnacle dualist hs cookset", 
    shopping_url: "https://www.rei.com/product/165301/gsi-outdoors-pinnacle-dualist-hs-cookset",
    image_url: "https://www.rei.com/media/b0cb685a-9f82-47bc-aa26-a7d2664edb64?size=784x588",
    season_id: winter.id,
    trail_id: berkey_creek_falls_trail.id
)
Item.create(
    name: "Batteries", 
    description: "4-pack AA alkaline batteries", 
    shopping_url: "https://www.rei.com/product/825322/energizer-max-alkaline-aa-batteries-package-of-4",
    image_url: "https://www.rei.com/media/01393524-a34e-4109-a9e2-e245ce426b30?size=784x588",
    season_id: winter.id,
    trail_id: mount_falcon_trail.id
)


# Spring Items
Item.create(
    name: "Sleeping Bag", 
    description: "Waterproof, lightweight, flannel interior with carry bag included", 
    shopping_url: "https://www.rei.com/rei-garage/product/187402/kelty-cosmic-40-sleeping-bag-long",
    image_url: "https://www.rei.com/media/7ea3b891-ce12-48e6-bcea-dd932794eaf0",
    season_id: spring.id,
    trail_id: waterfall_overlook_trail.id
)
Item.create(
    name: "Tent", 
    description: "Pop-Up automatic set-up with waterproof essential gear, rain fly and carry bag", 
    shopping_url: "https://www.amazon.com/Phiroop-Hydraulic-Automatic-Lightweight-Waterproof/dp/B091MR5JF5/ref=asc_df_B091MR5JF5/?tag=hyprod-20&linkCode=df0&hvadid=507574165586&hvpos=&hvnetw=g&hvrand=8254640189077610140&hvpone=&hvptwo=&hvqmt=&hvdev=c&hvdvcmdl=&hvlocint=&hvlocphy=9061258&hvtargid=pla-1315087528527&psc=1",
    image_url: "https://m.media-amazon.com/images/I/612IScFUcdL._AC_SL1200_.jpg",
    season_id: spring.id,
    trail_id: mount_sanitas.id
)
Item.create(
    name: "Lighter", 
    description: "Waterproof, windproof and USB Reachargable.", 
    shopping_url: "https://www.amazon.com/Lafagiet-Waterproof-Rechargeable-Flameless-Electric/dp/B089GK1VSN/ref=asc_df_B089GK1VSN/?tag=hyprod-20&linkCode=df0&hvadid=507697248479&hvpos=&hvnetw=g&hvrand=10943749819838277026&hvpone=&hvptwo=&hvqmt=&hvdev=c&hvdvcmdl=&hvlocint=&hvlocphy=9061258&hvtargid=pla-1226769200299&psc=1",
    image_url: "https://m.media-amazon.com/images/I/71M0IE7xJqL._AC_SL1500_.jpg",
    season_id: spring.id,
    trail_id: billy_goat_trail.id
)
Item.create(
    name: "Sleeping Pad", 
    description: "Ultra-light inflatable air pad", 
    shopping_url: "https://www.backcountry.com/alps-mountaineering-ultra-light-air-pad?CMP_SKU=ALM3075&MER=0406&skid=ALM3075-PER-REG",
    image_url: "https://content.backcountry.com/images/items/900/ALM/ALM3075/PER.jpg",
    season_id: spring.id,
    trail_id: devils_kitchen_trail.id
)
Item.create(
    name: "Tarp", 
    description: "Made from durable polyethylene and heavy-duty grommets", 
    shopping_url: "https://www.rei.com/product/848882/outdoor-products-all-purpose-tarp?sku=8488820001&store=83&cm_mmc=PLA_Google%7C21700000001700551_8488820001%7C92700057782281125%7CNB%7C71700000074092896&gclid=Cj0KCQiA2sqOBhCGARIsAPuPK0ivGs2AgjYSdGZmCeRWKZ0czyAkFLcTJWXHZDWXcOzkHTFsD0xqLrsaAiCQEALw_wcB&gclsrc=aw.ds",
    image_url: "https://www.rei.com/media/48546b8e-6f1c-47e9-987e-0d235af9eb1f?size=784x588",
    season_id: spring.id,
    trail_id: waterfall_overlook_trail.id
)
Item.create(
    name: "First Aid Kit", 
    description: "Ultra-light and watertight medical kit", 
    shopping_url: "https://www.rei.com/product/708124/adventure-medical-kits-ultralightwatertight-5-medical-kit?CAWELAID=120217890000877155&CAGPSPN=pla&CAAGID=100913262877&CATCI=pla-447612908365&cm_mmc=PLA_Google%7C21700000001700551_7081240017%7C92700053582162018%7CTOF%7C71700000066692708&gclid=Cj0KCQiA2sqOBhCGARIsAPuPK0jz3MUrufR4Hly2c-4MPaZKMzec6sdcW69o0-xjBgNKY7hlBqCdcqgaAk51EALw_wcB&gclsrc=aw.ds",
    image_url: "https://www.rei.com/media/39d2c49d-82c6-4d9a-a181-0fb78be0b629?size=784x588",
    season_id: spring.id,
    trail_id: mount_sanitas.id
)
Item.create(
    name: "Portable Grill", 
    description: "2 burner grill, stainless-steel drip tray and strong case latch", 
    shopping_url: "https://www.rei.com/product/149913/eureka-ignite-2-burner-camp-stove?sku=1499130001&store=83&cm_mmc=PLA_Google%7C21700000001700551_1499130001%7C92700061898520903%7CNB%7C71700000074090496&gclid=Cj0KCQiA2sqOBhCGARIsAPuPK0jXGqMVuYhXic3maXaGAWB30cQ2Uzj9iiFgTQ5duqRntPGBxJYcSrsaAtxeEALw_wcB&gclsrc=aw.ds",
    image_url: "https://www.rei.com/media/fa3b04fe-68a3-4c5a-a53f-d73da5b50f2c?size=784x588",
    season_id: spring.id,
    trail_id: billy_goat_trail.id
)
Item.create(
    name: "Propane Tanks", 
    description: "Includes (3) 16 oz. cylinders", 
    shopping_url: "https://www.target.com/p/coleman-3pk-propane/-/A-81968997?ref=tgt_adv_XS000000&AFID=google_pla_df&fndsrc=tgtao&DFA=71700000012806750&CPNG=PLA_Patio%2BGarden%2BShopping_Local%7CPatio%2BGarden_Ecomm_Home&adgroup=SC_Patio%2BGarden_Catch+All&LID=700000001170770pgs&LNM=PRODUCT_GROUP&network=g&device=c&location=9031947&targetid=aud-809535968620:pla-1461427175934&ds_rl=1246978&ds_rl=1247068&gclid=Cj0KCQiA2sqOBhCGARIsAPuPK0jMS65l_G89ZaQlATdynf5j2WNJu5HhZrCLNJwsFQOEJENeFOdVGs8aApjMEALw_wcB&gclsrc=aw.ds",
    image_url: "https://target.scene7.com/is/image/Target/GUEST_5fdad567-41f2-4395-912b-7131e692245e?wid=325&hei=325&qlt=80&fmt=webp",
    season_id: spring.id,
    trail_id: devils_kitchen_trail.id
)
Item.create(
    name: "Lights", 
    description: "Rechargeable LED Lantern with TackGrip", 
    shopping_url: "https://luxpro.com/products/3d-rugged-led-lantern-with-tackgrip?variant=31843859660918&currency=USD&utm_medium=product_sync&utm_source=google&utm_content=sag_organic&utm_campaign=sag_organic&utm_campaign=gs-2020-11-19&utm_source=google&utm_medium=smart_campaign&gclid=Cj0KCQiA2sqOBhCGARIsAPuPK0gUG-yWN7aUsfQFuwb7zwT6zb15LEjMTU2W9MSJgH7z3azRZQhPp-QaAn5HEALw_wcB",
    image_url: "https://cdn.shopify.com/s/files/1/0275/4097/9830/products/LP371-main_720x.jpg?v=1632243125",
    season_id: spring.id,
    trail_id: waterfall_overlook_trail.id
)
Item.create(
    name: "Blanket", 
    description: "Silk sleeping bag liner", 
    shopping_url: "https://www.rei.com/product/850427/cocoon-silk-mummy-liner",
    image_url: "https://www.rei.com/media/6740cf4f-d051-4f10-a3d1-213b9bba8b46?size=784x588",
    season_id: spring.id,
    trail_id: mount_sanitas.id
)
Item.create(
    name: "Multi-tool Knife", 
    description: "19 tools with all locking features.", 
    shopping_url: "https://www.rei.com/product/122294/leatherman-signal-topo-multi-tool?CAWELAID=120217890004520590",
    image_url: "https://www.rei.com/media/9b473703-9bf8-4808-b2b9-467de06277a4?size=784x588",
    season_id: spring.id,
    trail_id: billy_goat_trail.id
)
Item.create(
    name: "Utensils", 
    description: "24 Piece kitchen utensil set", 
    shopping_url: "https://www.rei.com/product/848099/gsi-outdoors-gourmet-kitchen-set-11?sku=8480990001&store=83",
    image_url: "https://www.rei.com/media/01b7500b-72fc-452e-bf80-5d049f58c5fe?size=784x588",
    season_id: spring.id,
    trail_id: devils_kitchen_trail.id
)
Item.create(
    name: "Cookware", 
    description: "Complete cookset for family of 4", 
    shopping_url: "https://www.rei.com/product/830776/gsi-outdoors-pinnacle-camper-cookset?CAWELAID=120217890000801086&CAGPSPN=pla&CAAGID=100738964535&CATCI=pla-366418484527&cm_mmc=PLA_Google%7C21700000001700551_8307760001%7C92700053301275004%7CTOF%7C71700000066415401&gclid=Cj0KCQiA2sqOBhCGARIsAPuPK0juaegEdZOG0EOZh6cCpBuU2sR7zL_NBQWshJc3DF4HV4aF-_oKyP0aAk1wEALw_wcB&gclsrc=aw.ds",
    image_url: "https://www.rei.com/media/7794ef73-2bf1-4cf3-9f3e-44dd55393cc2?size=784x588",
    season_id: spring.id,
    trail_id: waterfall_overlook_trail.id
)
Item.create(
    name: "Headlamp", 
    description: "7 adjustable positions, 5 light modes, takes (3) AAA batteries", 
    shopping_url: "https://www.northerntool.com/shop/tools/product_200791634_200791634?cm_mmc=Google-pla&utm_source=Google_PLA&utm_medium=Lighting%20%3E%20Flashlights&utm_campaign=Milwaukee&utm_content=89016&gclid=Cj0KCQiA2sqOBhCGARIsAPuPK0jl039TYXtfU0n_ZEZ3TVFMBEsYaBAbaUvz9gkrcRz7cqioQ2cQz7AaAiIXEALw_wcB&gclsrc=aw.ds",
    image_url: "https://www.northerntool.com/images/product/2000x2000/890/89016_2000x2000.jpg",
    season_id: spring.id,
    trail_id: mount_sanitas.id
)
Item.create(
    name: "Batteries", 
    description: "6 pack AAA, akaline batteries", 
    shopping_url: "https://www.target.com/p/duracell-coppertop-aa-batteries-4-pack-alkaline-battery/-/A-13657979?ref=tgt_adv_XS000000&AFID=google_pla_df&fndsrc=tmnv&DFA=71700000083356537&CPNG=PLA_DVM%2B0066S00000wXfznQAC-Duracell_AO_GoogleSearch_CopperTop_2021_Flight&adgroup=PLA_Duracell+Coppertop&LID=700000001393753pgs&network=g&device=c&location=9061258&gclid=Cj0KCQiA2sqOBhCGARIsAPuPK0jbX5dBvzEtAAv4msnjwylrNyyUJCSlHT2YX37v9NUwYjq9IZ2VVHoaAmfeEALw_wcB&gclsrc=aw.ds",
    image_url: "https://target.scene7.com/is/image/Target/GUEST_5c26b3e1-1555-4060-9bf4-075fd27a21a3?fmt=webp&wid=1400&qlt=80",
    season_id: spring.id,
    trail_id: billy_goat_trail.id
)
Item.create(
    name: "Bug Spray", 
    description: "Long-lasting protection from mosquitos, ticks, biting flies, gnats, and chiggers", 
    shopping_url: "https://www.lowes.com/pd/Off-Deep-Woods-4-oz-Insect-Repellent/3579594",
    image_url: "https://mobileimages.lowes.com/productimages/fb73ddcf-fe9f-44d0-a3a0-805a29c19f79/01094422.jpg?size=pdhi",
    season_id: spring.id,
    trail_id: devils_kitchen_trail.id
)
Item.create(
    name: "Cooler", 
    description: "52 qt. rolling cooler keeps ice up to 5 days", 
    shopping_url: "https://www.dickssportinggoods.com/p/igloo-marine-ultra-quantum-52-quart-rolling-cooler-18iglamrnltrqntm5odr/18iglamrnltrqntm5odr?sku=19149106",
    image_url: "https://dks.scene7.com/is/image/GolfGalaxy/18IGLAMRNLTRQNTM5ODR_White?qlt=70&wid=1100&fmt=webp",
    season_id: spring.id,
    trail_id: waterfall_overlook_trail.id
)
Item.create(
    name: "Camping Chairs", 
    description: "Dual lock chair with 2 cupholders", 
    shopping_url: "https://www.target.com/p/kijaro-dual-lock-camping-chair-maldives-blue/-/A-80418734?ref=tgt_adv_XS000000&AFID=google_pla_df_free_online&CPNG=Patio%2BGarden&adgroup=337-7",
    image_url: "https://target.scene7.com/is/image/Target/GUEST_7cccf484-6195-4675-8862-c24bf63bda1b?wid=325&hei=325&qlt=80&fmt=webp",
    season_id: spring.id,
    trail_id: mount_sanitas.id
)


#Summer Items
Item.create(
    name: "Sleeping Bag", 
    description: "Specifically designed for use in warm or humid conditions", 
    shopping_url: "https://www.rei.com/product/199975/kelty-cosmic-40-down-sleeping-bag",
    image_url: "https://www.rei.com/media/a861402e-3f92-4eca-9dbf-6e3c53a4b39a?size=784x588",
    season_id: summer.id,
    trail_id: lower_yosemite_fall_trail.id
)
Item.create(
    name: "Tent", 
    description: "Lightweight with high and low venting for adjustable airflow", 
    shopping_url: "https://www.amazon.com/Eureka-Summer-Two-Person-Three-Season-Backpacking/dp/B07KTC29GV?crid=1D3RTDFOXM38Z&dchild=1&keywords=summer+tents+for+camping&qid=1619621662&s=sporting-goods&sprefix=summer+tentssporting270&sr=1-5&linkCode=sl1&tag=gearup06c-20&linkId=c6df2241d8a95dd7b2d103667706a35e&language=en_US&ref_=as_li_ss_tl",
    image_url: "https://m.media-amazon.com/images/I/51UqdeJMVAL._AC_SL1200_.jpg",
    season_id: summer.id,
    trail_id: jasmine_irvine_trail.id
)
Item.create(
    name: "Lighter", 
    description: "Waterproof, windproof and USB Reachargable.", 
    shopping_url: "https://www.amazon.com/Green-Vivid-Lighter-Dual-Rechargeable-Windproof-No-Butane-Ideal/dp/B07QYVQ4PX/ref=asc_df_B07QYVQ4PX/?tag=hyprod-20&linkCode=df0&hvadid=343221174204&hvpos=&hvnetw=g&hvrand=8614823992265987237&hvpone=&hvptwo=&hvqmt=&hvdev=c&hvdvcmdl=&hvlocint=&hvlocphy=9031947&hvtargid=pla-784579409698&psc=1&tag=&ref=&adgrpid=71833457434&hvpone=&hvptwo=&hvadid=343221174204&hvpos=&hvnetw=g&hvrand=8614823992265987237&hvqmt=&hvdev=c&hvdvcmdl=&hvlocint=&hvlocphy=9031947&hvtargid=pla-784579409698",
    image_url: "https://m.media-amazon.com/images/I/61L0AL9KABL._AC_SL1500_.jpg",
    season_id: summer.id,
    trail_id: mount_evans.id
)
Item.create(
    name: "Sleeping Pad", 
    description: "Ultralight inflatable mat", 
    shopping_url: "https://www.amazon.com/PowerLix-Sleeping-Pad-Orange-Black/dp/B00CBOFS8M/ref=asc_df_B00CBOFS8M/?tag=hyprod-20&linkCode=df0&hvadid=309797356952&hvpos=&hvnetw=g&hvrand=10574984569741935167&hvpone=&hvptwo=&hvqmt=&hvdev=c&hvdvcmdl=&hvlocint=&hvlocphy=9031947&hvtargid=pla-676660711408&psc=1",
    image_url: "https://m.media-amazon.com/images/I/81Iw9O3D-UL._AC_UX679_.jpg",
    season_id: summer.id,
    trail_id: sugarloaf_loop.id
)
Item.create(
    name: "Portable Grill", 
    description: "Auto-ignition turns on the flame quickly and easily", 
    shopping_url: "https://www.rei.com/product/179538/eureka-sprk-camp-grill?sku=1795380001&store=83&cm_mmc=PLA_Google%7C21700000001700551_1795380001%7C92700061898520897%7CNB%7C71700000074090496&gclid=Cj0KCQiA2sqOBhCGARIsAPuPK0iksKqzofacKFzuNSMMmircnzJUipeg7QOtZXEk6vJte6AISYmna30aAviKEALw_wcB&gclsrc=aw.ds",
    image_url: "https://www.rei.com/media/596eee80-37f7-40e1-92ea-5bab38dea8f6?size=784x588",
    season_id: summer.id,
    trail_id: lower_yosemite_fall_trail.id
)
Item.create(
    name: "Propane Tanks", 
    description: "Includes (3) 16 oz. cylinders", 
    shopping_url: "https://www.target.com/p/coleman-3pk-propane/-/A-81968997?ref=tgt_adv_XS000000&AFID=google_pla_df&fndsrc=tgtao&DFA=71700000012806750&CPNG=PLA_Patio%2BGarden%2BShopping_Local%7CPatio%2BGarden_Ecomm_Home&adgroup=SC_Patio%2BGarden_Catch+All&LID=700000001170770pgs&LNM=PRODUCT_GROUP&network=g&device=c&location=9031947&targetid=aud-809535968620:pla-1461427175934&ds_rl=1246978&ds_rl=1247068&gclid=Cj0KCQiA2sqOBhCGARIsAPuPK0jMS65l_G89ZaQlATdynf5j2WNJu5HhZrCLNJwsFQOEJENeFOdVGs8aApjMEALw_wcB&gclsrc=aw.ds",
    image_url: "https://target.scene7.com/is/image/Target/GUEST_5fdad567-41f2-4395-912b-7131e692245e?wid=325&hei=325&qlt=80&fmt=webp",
    season_id: summer.id,
    trail_id: jasmine_irvine_trail.id
)
Item.create(
    name: "Lights", 
    description: "Waterproof rechargeable LED lantern", 
    shopping_url: "https://www.amazon.com/Rechargeable-Dimmable-Lighting-Searchlight-Emergency/dp/B00Y8AHZYC/ref=asc_df_B00Y8AHZYC/?tag=hyprod-20&linkCode=df0&hvadid=242009928898&hvpos=&hvnetw=g&hvrand=14234905273243702014&hvpone=&hvptwo=&hvqmt=&hvdev=c&hvdvcmdl=&hvlocint=&hvlocphy=9031947&hvtargid=pla-428835695491&psc=1",
    image_url: "https://m.media-amazon.com/images/I/61sqNBmSXPL._AC_SL1000_.jpg",
    season_id: summer.id,
    trail_id: mount_evans.id
)
Item.create(
    name: "First Aid Kit", 
    description: "Mountain series medical kits", 
    shopping_url: "https://www.rei.com/product/113008/adventure-medical-kits-mountain-series-explorer-medical-kit",
    image_url: "https://www.rei.com/media/865435d7-b6ad-42d7-bdad-e736ed1feeb2?size=784x588",
    season_id: summer.id,
    trail_id: sugarloaf_loop.id
)
Item.create(
    name: "Multi-tool Knife", 
    description: "19 tools with all locking features", 
    shopping_url: "https://www.rei.com/product/162913/leatherman-signal-colors-multi-tool?sku=1629130001&store=83&cm_mmc=PLA_Google%7C21700000001700551_1629130001%7C92700057788046338%7CNB%7C71700000074092983&gclid=Cj0KCQiA2sqOBhCGARIsAPuPK0iqqAiWPS7dLcu0z8YKKVAkZTaP67CxnysOizVs9wzz4J7EttlLrFgaAt01EALw_wcB&gclsrc=aw.ds",
    image_url: "https://www.rei.com/media/ad940ded-fa04-45cd-95cc-39ca3be71df0?size=784x588",
    season_id: summer.id,
    trail_id: lower_yosemite_fall_trail.id
)
Item.create(
    name: "Utensils", 
    description: "Camping cookware, utensil organizer, and cutting board kit", 
    shopping_url: "https://www.amazon.com/Backpacking-Cookware-Organizer-Resistant-Scissors/dp/B07TGJ4FQS/ref=asc_df_B07TGJ4FQS/?tag=hyprod-20&linkCode=df0&hvadid=366307019433&hvpos=&hvnetw=g&hvrand=12126564475153180899&hvpone=&hvptwo=&hvqmt=&hvdev=c&hvdvcmdl=&hvlocint=&hvlocphy=9031964&hvtargid=pla-802255887961&psc=1&tag=&ref=&adgrpid=77662694313&hvpone=&hvptwo=&hvadid=366307019433&hvpos=&hvnetw=g&hvrand=12126564475153180899&hvqmt=&hvdev=c&hvdvcmdl=&hvlocint=&hvlocphy=9031964&hvtargid=pla-802255887961",
    image_url: "https://m.media-amazon.com/images/I/71EtOU-vStL._AC_SL1200_.jpg",
    season_id: summer.id,
    trail_id: jasmine_irvine_trail.id
)
Item.create(
    name: "Cookware", 
    description: "19 piece cookset for family of 4", 
    shopping_url: "https://www.rei.com/product/149217/stanley-adventure-base-camp-cookset-4?sku=1492170001&store=83&cm_mmc=PLA_Google%7C21700000001700551_1492170001%7C92700057791411986%7CNB%7C71700000074090496&gclid=Cj0KCQiA2sqOBhCGARIsAPuPK0gNx3d1mf2dNfmmtfwXSDHadwxsTc5HGgHUmTXa4_GmVgu29Mhqz6waAh4MEALw_wcB&gclsrc=aw.ds",
    image_url: "https://www.rei.com/media/19335b7d-57af-4803-a673-0cc0cba8ca1d?size=784x588",
    season_id: summer.id,
    trail_id: mount_evans.id
)
Item.create(
    name: "Sun Block", 
    description: "Sweat, water, and heat resistant sunscreen SPF 70", 
    shopping_url: "https://www.amazon.com/Coppertone-Sunscreen-Lotion-Spectrum-7-Fluid-Ounce/dp/B0173G3B0Y",
    image_url: "https://m.media-amazon.com/images/I/71Z6BIaKruL._SL1500_.jpg",
    season_id: summer.id,
    trail_id: sugarloaf_loop.id
)
Item.create(
    name: "Head Lamp", 
    description: "6-setting 3 LED battery meter", 
    shopping_url: "https://www.rei.com/product/173964/black-diamond-spot-350-headlamp?sku=1739640006&store=83&cm_mmc=PLA_Google%7C21700000001700551_1739640006%7C92700057791413561%7CNB%7C71700000074090499&gclid=Cj0KCQiA2sqOBhCGARIsAPuPK0hOY9qilsBeSMqbpfHgw4o-fJr3QwMvLk2Kj_IQVuQf7oQIJGR8tLAaAj7LEALw_wcB&gclsrc=aw.ds",
    image_url: "https://www.rei.com/media/24c5ae29-1ae0-476f-aed3-72dd7e4cf788?size=2000",
    season_id: summer.id,
    trail_id: lower_yosemite_fall_trail.id
)
Item.create(
    name: "Batteries", 
    description: "6 pack AAA, akaline batteries", 
    shopping_url: "https://www.target.com/p/duracell-coppertop-aa-batteries-4-pack-alkaline-battery/-/A-13657979?ref=tgt_adv_XS000000&AFID=google_pla_df&fndsrc=tmnv&DFA=71700000083356537&CPNG=PLA_DVM%2B0066S00000wXfznQAC-Duracell_AO_GoogleSearch_CopperTop_2021_Flight&adgroup=PLA_Duracell+Coppertop&LID=700000001393753pgs&network=g&device=c&location=9061258&gclid=Cj0KCQiA2sqOBhCGARIsAPuPK0jbX5dBvzEtAAv4msnjwylrNyyUJCSlHT2YX37v9NUwYjq9IZ2VVHoaAmfeEALw_wcB&gclsrc=aw.ds",
    image_url: "https://target.scene7.com/is/image/Target/GUEST_5c26b3e1-1555-4060-9bf4-075fd27a21a3?wid=325&hei=325&qlt=80&fmt=webp",
    season_id: summer.id,
    trail_id: jasmine_irvine_trail.id
)
Item.create(
    name: "Cooler", 
    description: "Holds ice up to 5 days at 90°F", 
    shopping_url: "https://www.dickssportinggoods.com/p/igloo-maxcold-profile-54-roller-cooler-20iglamxcldprfl54rec/20iglamxcldprfl54rec?sku=20676034",
    image_url: "https://dks.scene7.com/is/image/GolfGalaxy/20IGLAMXCLDPRFL54REC_Jet_Carb_Wht_Ice_Blue?wid=1500&fmt=pjpeg",
    season_id: summer.id,
    trail_id: sugarloaf_loop.id
)
Item.create(
    name: "Sandals", 
    description: "Podiatrist-certified Luvseat polyurethane footbeds for all-day comfort and support", 
    shopping_url: "https://www.rei.com/product/897125/chaco-z1-classic-sandals-mens?cm_mmc=aff_AL-_-145262-_-180150-_-NA&avad=180150_e25e61e6d",
    image_url: "https://www.rei.com/media/7cf35e72-4295-4af5-b549-2e41ef433c10?size=784x588",
    season_id: summer.id,
    trail_id: mount_evans.id
)
Item.create(
    name: "Sun Hat", 
    description: "Elevated design improves cooling performance", 
    shopping_url: "https://www.rei.com/product/186001/sunday-afternoons-sun-guardian-hat?CAWELAID=120217890011881184&CAGPSPN=pla&CAAGID=103734867260&CATCI=pla-916307070900&cm_mmc=PLA_Google%7C21700000001700551_1860010001%7C92700055119833331%7CNB%7C71700000062011487&gclid=Cj0KCQiA2sqOBhCGARIsAPuPK0i4PaJost0maI9T-O274148pTH2LFc1PCHf2UUoCA11waXj1FYjnowaAsj9EALw_wcB&gclsrc=aw.ds",
    image_url: "https://www.rei.com/media/cfffbed3-9fc2-4e44-886c-6c02929745a7?size=576x768",
    season_id: summer.id,
    trail_id: lower_yosemite_fall_trail.id
)
Item.create(
    name: "Sunglasses", 
    description: "Polarized unisex sports sunglasses", 
    shopping_url: "https://www.rei.com/product/198329/knockaround-torrey-pines-polarized-sunglasses?sku=1983290003&store=83&cm_mmc=PLA_Google%7C21700000001700551_1983290003%7C92700067340092173%7CNB%7C71700000074092992&gclid=Cj0KCQiA2sqOBhCGARIsAPuPK0hKJ6nOoKInR-BoE2afc7hKxilvgkxTlFTqRDij1BKF0LMkE-iopDoaAnXWEALw_wcB&gclsrc=aw.ds",
    image_url: "https://www.rei.com/media/e5842553-feee-49bc-83a9-fc73406ba359?size=784x588",
    season_id: summer.id,
    trail_id: jasmine_irvine_trail.id
)
Item.create(
    name: "Beach Towel", 
    description: "Large fluffy cotton swimming towel", 
    shopping_url: "https://www.amazon.com/dp/B08X6LMPKG/ref=sspa_dk_detail_1?pd_rd_i=B08ZHRZR8Y&pd_rd_w=J2LfV&pf_rd_p=887084a2-5c34-4113-a4f8-b7947847c308&pd_rd_wg=JyHXj&pf_rd_r=T9NYBZAJCSDP34NZJDNH&pd_rd_r=0e5c7875-7c93-4842-9d9c-d7cc9e79283f&spLa=ZW5jcnlwdGVkUXVhbGlmaWVyPUEyT0FSTzdNNUtJSFJVJmVuY3J5cHRlZElkPUEwMDUzMTYxR0RSQTVaTzJZUjE3JmVuY3J5cHRlZEFkSWQ9QTA3OTA3OTdBQUtBNVlaVEw2MFUmd2lkZ2V0TmFtZT1zcF9kZXRhaWwmYWN0aW9uPWNsaWNrUmVkaXJlY3QmZG9Ob3RMb2dDbGljaz10cnVl&th=1",
    image_url: "https://m.media-amazon.com/images/I/71aLH-aaHUS._AC_SL1000_.jpg",
    season_id: summer.id,
    trail_id: mount_evans.id
)
Item.create(
    name: "Camping Chairs", 
    description: "Holds up to 300 lbs, includes 2 cup holders and carry bag with strap",
    shopping_url: "https://www.rei.com/product/170878/mountain-summit-gear-anytime-chair?CAWELAID=120217890009818234&CAGPSPN=pla&CAAGID=100864604872&CATCI=pla-501439955167&cm_mmc=PLA_Google%7C21700000001700551_1708780002%7C92700053307854224%7CTOF%7C71700000062011448&gclid=Cj0KCQiA2sqOBhCGARIsAPuPK0g3wOyxadym7PzWN-DJDg6Cf4ai-uLtVtTC26YwbFchB7BnkLXCaH8aAme9EALw_wcB&gclsrc=aw.ds",
    image_url: "https://www.rei.com/media/7a94f5b4-dd49-46ca-bfac-038336a28a9f?size=784x588",
    season_id: summer.id,
    trail_id: sugarloaf_loop.id
)
Item.create(
    name: "Hammock", 
    description: "Lightweight, comfortable, and holds up to 500 lbs", 
    shopping_url: "https://www.rei.com/product/130005/kammok-roo-single-hammock?color=FOREST",
    image_url: "https://www.rei.com/media/1c97006f-55e3-4a5c-87d3-b5ba48cc419d?size=784x588",
    season_id: summer.id,
    trail_id: lower_yosemite_fall_trail.id
)
puts "...completed items!"




puts "✅ Done seeding!"
