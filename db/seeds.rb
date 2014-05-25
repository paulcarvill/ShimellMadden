# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
#require 'active_record/fixtures'
#ActiveRecord::FixtureSet.create_fixtures("#{Rails.root}/test/fixtures", "collections")
#ActiveRecord::FixtureSet.create_fixtures("#{Rails.root}/test/fixtures", "projects")
#ActiveRecord::FixtureSet.create_fixtures("#{Rails.root}/test/fixtures", "Item s")

blogs = Blog.create([
	{
		headline: "News headline one",
		body: "<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor.</p><p>
Reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>",
		blogImage: File.open(Rails.root.join("db/seeds/news","news1.jpg"))
	},
	{
		headline: "News headline two",
		body: "<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor.</p><p>
Reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>",
		blogImage: File.open(Rails.root.join("db/seeds/news","news2.jpg"))
	},
	{
		headline: "News headline three",
		body: "<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor.</p><p>
Reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>",
		blogImage: File.open(Rails.root.join("db/seeds/news","news3.jpg"))
	},
	{
		headline: "News headline four",
		body: "<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor.</p><p>
Reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>",
		blogImage: File.open(Rails.root.join("db/seeds/news","news4.jpg"))
	},
	{
		headline: "News headline five",
		body: "<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor.</p><p>
Reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>"
	},
	{
		headline: "News headline six",
		body: "<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor.</p><p>
Reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>"
	}
])

collections = Collection.create([
	{
		name: "Cuboid",
		description: "Simple symbols of dimension and perspective."
	},
	{
		name: "Centric",
		description: "Lorem ipsum contain all the record creation needed to seed."
	},
	{
		name: "Symmetry",
		description: "Ecord creation seeded lorem ipsum contain all the re."
	}
])

categories = Category.create([
	{
		name: "Rings"
	},
	{
		name: "Necklaces"
	},
	{
		name: "Earrings"
	},
	{
		name: "Other"
	}
])

projects = Project.create([
	{
		name: "Delta",
		description: "Loreord creaed to seeon needin all the recum ipsum contatid."
	},
	{
		name: "Key",
		description: "Ecord creation seeded lorem ipsum contain all the re."
	},
	{
		name: "Metric",
		description: "Lorem ipsum contain all the record creation needed to seed."
	},
	{
		name: "Test",
		description: "Loreord creaed to seeon needin all the recum ipsum contatid."
	},
	{
		name: "Project Five",
		description: "Lorem ipsum contain all the record creation needed to seed."
	},
	{
		name: "Project Six",
		description: "Loreord creaed to seeon needin all the recum ipsum contatid."
	},
	{
		name: "Project Seven",
		description: "Ecord creation seeded lorem ipsum contain all the re."
	},
	{
		name: "Project Eight",
		description: "Loreord creaed to seeon needin all the recum ipsum contatid."
	}
])

# img style one: 1800x1286
# img style two: 477x429
# img style three: 977x1286

# about/commissioning/info: 660x420

Item.create([
	{
	name: "Item 1",
	description: "foo",
	price: 3.5, shipping: 3.5,
	shopifyid: "MyShopifyIdString",
	homepage: true,
	categories: [categories[0]],
	imageStyleOne: File.open(Rails.root.join("db/seeds/item1","item_1_ed_3000x1679_style1.jpg")),
	imageStyleTwo: File.open(Rails.root.join("db/seeds/item1","item_1_ed_2990x2698_style2.jpg")),
	imageStyleThree: File.open(Rails.root.join("db/seeds/item1","item_1_ed_2279x3000_style3.jpg")),
	collection_id: collections[0].id
	},
	{
	name: "Item 2",
	description: "foo",
	price: 3.5, shipping: 3.5,
	shopifyid: "MyShopifyIdString",
	homepage: true,
	categories: [categories[0]],
	imageStyleOne: File.open(Rails.root.join("db/seeds/item2","item_2_cuboid_goldplated_3000x1898_style1.jpg")),
	imageStyleTwo: File.open(Rails.root.join("db/seeds/item2","item_2_cuboid_goldplated_2185x1965_style2.jpg")),
	imageStyleThree: File.open(Rails.root.join("db/seeds/item2","item_2_cuboid_goldplated_1493x1965_style3.jpg")),
	collection_id: collections[0].id
	},
	{
	name: "Item 3 MG",
	description: "foo",
	price: 3.5, shipping: 3.5,
	shopifyid: "MyShopifyIdString",
	homepage: true,
	categories: [categories[0]],
	imageStyleOne: File.open(Rails.root.join("db/seeds/item3","item_3_delta_2000x1429_style1.jpg")),
	imageStyleTwo: File.open(Rails.root.join("db/seeds/item3","item_3_delta_2000x1758_style2.jpg")),
	imageStyleThree: File.open(Rails.root.join("db/seeds/item3","item_3_delta_2000x2633_style3.jpg")),
	# part of delta project
	project_id: projects[0].id
	},
	{
	name: "Item 4",
	description: "foo",
	price: 3.5, shipping: 3.5,
	shopifyid: "MyShopifyIdString",
	categories: [categories[0]],
	imageStyleOne: File.open(Rails.root.join("db/seeds/item4","item_4_symmetry_1960x1400_style1.jpg")),
	imageStyleTwo: File.open(Rails.root.join("db/seeds/item4","item_4_symmetry_1557x1400_style2.jpg")),
	imageStyleThree: File.open(Rails.root.join("db/seeds/item4","item_4_symmetry_1064x1400_style3.jpg")),
	collection_id: collections[2].id
	},
	{
	name: "Brooch",
	description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit lacus ligula, pellentesque sed pellent esque vitae, porta vel leo.",
	price: 3.5, shipping: 3.5,
	shopifyid: "MyShopifyIdString",
	categories: [categories[0]],
	imageStyleOne: File.open(Rails.root.join("db/seeds/item5","item_5_brooch_1000x714_style1.jpg")),
	imageStyleTwo: File.open(Rails.root.join("db/seeds/item5","item_5_brooch_899x809_style2.jpg")),
	imageStyleThree: File.open(Rails.root.join("db/seeds/item5","item_5_brooch_850x1119_style3.jpg")),
	archive: true,
	},
	{
	name: "Item 6",
	description: "foo",
	price: 3.5, shipping: 3.5,
	shopifyid: "MyShopifyIdString",
	categories: [categories[0]],
	imageStyleOne: File.open(Rails.root.join("db/seeds/item6","item_6_key_1000x714_style1.jpg")),
	imageStyleTwo: File.open(Rails.root.join("db/seeds/item6","item_6_key_890x809_style2.jpg")),
	imageStyleThree: File.open(Rails.root.join("db/seeds/item6","item_6_key_608x800_style3.jpg")),
	collection_id: collections[1].id
	},
	{
	name: "Item 7",
	description: "foo",
	price: 3.5, shipping: 3.5,
	shopifyid: "MyShopifyIdString",
	categories: [categories[1]],
	imageStyleOne: File.open(Rails.root.join("db/seeds/item7","item_7_test_2447x1748_style1.jpg")),
	imageStyleTwo: File.open(Rails.root.join("db/seeds/item7","item_7_test_1944x1748_style2.jpg")),
	imageStyleThree: File.open(Rails.root.join("db/seeds/item7","item_7_test_1328x1748_style3.jpg")),
	# part of test project
	project_id: projects[3].id
	},
	{
	name: "Item 8",
	description: "foo",
	price: 3.5, shipping: 3.5,
	shopifyid: "MyShopifyIdString",
	categories: [categories[1]],
	imageStyleOne: File.open(Rails.root.join("db/seeds/item8","item_8_metric_3000x1679_style1.jpg")),
	imageStyleTwo: File.open(Rails.root.join("db/seeds/item8","item_8_metric_2000x1799_style2.jpg")),
	imageStyleThree: File.open(Rails.root.join("db/seeds/item8","item_8_metric_1500x1974_style3.jpg")),
	project_id: projects[2].id
	},
	{
	name: "Item 9",
	description: "foo",
	price: 3.5, shipping: 3.5,
	shopifyid: "MyShopifyIdString",
	categories: [categories[2]],
	imageStyleOne: File.open(Rails.root.join("db/seeds/item9","item_9_centric_1226x686_style1.jpg")),
	imageStyleTwo: File.open(Rails.root.join("db/seeds/item9","item_9_centric_1143x1028_style2.jpg")),
	imageStyleThree: File.open(Rails.root.join("db/seeds/item9","item_9_centric_781x1028_style3.jpg")),
	collection_id: collections[1].id
	},
	{
	name: "Bangles",
	description: "foo",
	price: 13.50,
	shipping: 4.50,
	shopifyid: "MyShopifyIdString",
	categories: [categories[1]],
	imageStyleOne: File.open(Rails.root.join("db/seeds/item10","item_10_bangle_3225x2304_style1.jpg")),
	imageStyleTwo: File.open(Rails.root.join("db/seeds/item10","item_10_bangle_2562x2304_style2.jpg")),
	imageStyleThree: File.open(Rails.root.join("db/seeds/item10","item_10_bangle_1750x2304_style3.jpg")),
	archive: true,
	},
	{
	name: "Item 11",
	description: "foo",
	price: 3.5,
	shipping: 3.5,
	shopifyid: "MyShopifyIdString",
	archive: true,
	categories: [categories[1]],
	imageStyleOne: File.open(Rails.root.join("db/seeds/item11","item_11_MG_750x536_style1.jpg")),
	imageStyleTwo: File.open(Rails.root.join("db/seeds/item11","item_11_MG_750x675_style2.jpg")),
	imageStyleThree: File.open(Rails.root.join("db/seeds/item11","item_11_MG_750x987_style3.jpg")),
	},
	{
	name: "Item 12",
	description: "foo",
	price: 3.5, shipping: 3.5,
	shopifyid: "MyShopifyIdString",
	archive: true,
	categories: [categories[2]],
	imageStyleOne: File.open(Rails.root.join("db/seeds","1800x1286-purple.gif")),
	imageStyleTwo: File.open(Rails.root.join("db/seeds","1286x1286-green.gif")),
	imageStyleThree: File.open(Rails.root.join("db/seeds","977x1286-cherry.gif")),
	project_id: projects[0].id
	},
	{
	name: "Item 13",
	description: "foo",
	price: 3.5, shipping: 3.5,
	shopifyid: "MyShopifyIdString",
	archive: true,
	categories: [categories[3], categories[2]],
	imageStyleOne: File.open(Rails.root.join("db/seeds","1800x1286-purple.gif")),
	imageStyleTwo: File.open(Rails.root.join("db/seeds","1286x1286-green.gif")),
	imageStyleThree: File.open(Rails.root.join("db/seeds","977x1286-cherry.gif")),
	project_id: projects[0].id
	},
	{
	name: "Item 14",
	description: "foo",
	price: 3.5, shipping: 3.5,
	shopifyid: "MyShopifyIdString",
	archive: true,
	categories: [categories[3]],
	imageStyleOne: File.open(Rails.root.join("db/seeds","1800x1286-purple.gif")),
	imageStyleTwo: File.open(Rails.root.join("db/seeds","1286x1286-green.gif")),
	imageStyleThree: File.open(Rails.root.join("db/seeds","977x1286-cherry.gif")),
	project_id: projects[0].id
	},
	{
	name: "Item 15",
	description: "foo",
	price: 3.5, shipping: 3.5,
	shopifyid: "MyShopifyIdString",
	archive: true,
	categories: [categories[1]],
	imageStyleOne: File.open(Rails.root.join("db/seeds","1800x1286-purple.gif")),
	imageStyleTwo: File.open(Rails.root.join("db/seeds","1286x1286-green.gif")),
	imageStyleThree: File.open(Rails.root.join("db/seeds","977x1286-cherry.gif")),
	project_id: projects[0].id
	},
	{
	name: "Item 16",
	description: "foo",
	price: 3.5, shipping: 3.5,
	shopifyid: "MyShopifyIdString",
	archive: true,
	categories: [categories[1]],
	imageStyleOne: File.open(Rails.root.join("db/seeds","1800x1286-purple.gif")),
	imageStyleTwo: File.open(Rails.root.join("db/seeds","1286x1286-green.gif")),
	imageStyleThree: File.open(Rails.root.join("db/seeds","977x1286-cherry.gif")),
	project_id: projects[7].id
	},
	{
	name: "Item 17",
	description: "foo",
	price: 3.5, shipping: 3.5,
	shopifyid: "MyShopifyIdString",
	archive: true,
	categories: [categories[2]],
	imageStyleOne: File.open(Rails.root.join("db/seeds","1800x1286-purple.gif")),
	imageStyleTwo: File.open(Rails.root.join("db/seeds","1286x1286-green.gif")),
	imageStyleThree: File.open(Rails.root.join("db/seeds","977x1286-cherry.gif")),
	project_id: projects[6].id
	},
	{
	name: "Item 18",
	description: "foo",
	price: 3.5, shipping: 3.5,
	shopifyid: "MyShopifyIdString",
	archive: true,
	categories: [categories[1]],
	imageStyleOne: File.open(Rails.root.join("db/seeds","1800x1286-orange.gif")),
	imageStyleTwo: File.open(Rails.root.join("db/seeds","1286x1286-green.gif")),
	imageStyleThree: File.open(Rails.root.join("db/seeds","977x1286-cherry.gif")),
	project_id: projects[5].id
	},
	{
	name: "Item 19",
	description: "foo",
	price: 3.5, shipping: 3.5,
	shopifyid: "MyShopifyIdString",
	archive: true,
	categories: [categories[3]],
	imageStyleOne: File.open(Rails.root.join("db/seeds","1800x1286-purple.gif")),
	imageStyleTwo: File.open(Rails.root.join("db/seeds","1286x1286-green.gif")),
	imageStyleThree: File.open(Rails.root.join("db/seeds","977x1286-cherry.gif")),
	project_id: projects[4].id
	},
	{
	name: "Item 20",
	description: "foo",
	price: 3.5, shipping: 3.5,
	shopifyid: "MyShopifyIdString",
	archive: true,
	categories: [categories[2]],
	imageStyleOne: File.open(Rails.root.join("db/seeds","1800x1286-cherry.gif")),
	imageStyleTwo: File.open(Rails.root.join("db/seeds","1286x1286-green.gif")),
	imageStyleThree: File.open(Rails.root.join("db/seeds","977x1286-cherry.gif")),
	project_id: projects[3].id
	},
	{
	name: "Item 21",
	description: "foo",
	price: 3.5, shipping: 3.5,
	shopifyid: "MyShopifyIdString",
	archive: true,
	categories: [categories[2]],
	imageStyleOne: File.open(Rails.root.join("db/seeds","1800x1286-purple.gif")),
	imageStyleTwo: File.open(Rails.root.join("db/seeds","1286x1286-green.gif")),
	imageStyleThree: File.open(Rails.root.join("db/seeds","977x1286-cherry.gif")),
	project_id: projects[2].id
	},
	{
	name: "Item 22",
	description: "foo",
	price: 3.5, shipping: 3.5,
	shopifyid: "MyShopifyIdString",
	archive: true,
	categories: [categories[2]],
	imageStyleOne: File.open(Rails.root.join("db/seeds","1800x1286-green.gif")),
	imageStyleTwo: File.open(Rails.root.join("db/seeds","1286x1286-green.gif")),
	imageStyleThree: File.open(Rails.root.join("db/seeds","977x1286-cherry.gif")),
	project_id: projects[1].id
	},
	{
	name: "Item 23",
	description: "foo",
	price: 3.5, shipping: 3.5,
	shopifyid: "MyShopifyIdString",
	archive: true,
	categories: [categories[1]],
	imageStyleOne: File.open(Rails.root.join("db/seeds","1800x1286-purple.gif")),
	imageStyleTwo: File.open(Rails.root.join("db/seeds","1286x1286-green.gif")),
	imageStyleThree: File.open(Rails.root.join("db/seeds","977x1286-cherry.gif")),
	project_id: projects[1].id
	}



])