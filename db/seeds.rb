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

pages = Page.create([
	{
		name: "About",
		content: "<h2>About</h2><p>About us lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor.</p><p>
Reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>",
		image: File.open(Rails.root.join("db/seeds/news","news1.jpg"))
	},
	{
		name: "Commissioning",
		content: "<h2>Commissioning</h2><p>Commissioning us lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor.</p><p>
Reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>",
		image: File.open(Rails.root.join("db/seeds/news","news1.jpg"))
	},
	{
		name: "Contact",
		content: "<p><em>Emma Simone Madden</em></p><p><a href=\"mailto:emma@shimellandmadden.com\">emma@shimellandmadden.com</a></p><p class=\"tel\"><em>Mobile: <a href=\"tel:+4407548887832\">+44 (0)7548 887832</a></em></p><br	/><p><em>Luke Shimell</em></p><p><a href=\"mailto:luke@shimellandmadden.com\">luke@shimellandmadden.com</a></p><p class=\"tel\"><em>Mobile: <a href=\"tel:+4407970075071\">+44 (0)7970 075071</a></em></p><br	/>",
		image: File.open(Rails.root.join("db/seeds/news","news1.jpg"))
	}
])

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
	},
	{
		headline: "News headline seven",
		body: "<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor.</p><p>
Reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>",
		blogImage: File.open(Rails.root.join("db/seeds/news","news1.jpg"))
	},
	{
		headline: "News headline eight",
		body: "<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor.</p><p>
Reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>",
		blogImage: File.open(Rails.root.join("db/seeds/news","news2.jpg"))
	},
	{
		headline: "News headline nine",
		body: "<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor.</p><p>
Reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>",
		blogImage: File.open(Rails.root.join("db/seeds/news","news3.jpg"))
	},
	{
		headline: "News headline ten",
		body: "<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor.</p><p>
Reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>",
		blogImage: File.open(Rails.root.join("db/seeds/news","news4.jpg"))
	},
	{
		headline: "News headline eleven",
		body: "<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor.</p><p>
Reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>"
	},
	{
		headline: "News headline twelve",
		body: "<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor.</p><p>
Reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>"
	},
	{
		headline: "News headline thirteen",
		body: "<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor.</p><p>
Reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>",
		blogImage: File.open(Rails.root.join("db/seeds/news","news2.jpg"))
	},
	{
		headline: "News headline fourteen",
		body: "<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor.</p><p>
Reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>",
		blogImage: File.open(Rails.root.join("db/seeds/news","news3.jpg"))
	},
	{
		headline: "News headline fifteen",
		body: "<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor.</p><p>
Reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>",
		blogImage: File.open(Rails.root.join("db/seeds/news","news4.jpg"))
	},
	{
		headline: "News headline sixteen",
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
	imageStyleOne: File.open(Rails.root.join("db/seeds/ShimellMaddenImages","1_1280_800_ratio.jpg")),
	collection_id: collections[0].id
	},
	{
	name: "Item 2",
	description: "foo",
	price: 3.5, shipping: 3.5,
	shopifyid: "MyShopifyIdString",
	homepage: true,
	categories: [categories[0]],
	imageStyleOne: File.open(Rails.root.join("db/seeds/ShimellMaddenImages","2_1280_800_ratio.jpg")),
	collection_id: collections[0].id
	},
	{
	name: "Item 3 MG",
	description: "foo",
	price: 3.5, shipping: 3.5,
	shopifyid: "MyShopifyIdString",
	homepage: true,
	categories: [categories[0]],
	imageStyleOne: File.open(Rails.root.join("db/seeds/ShimellMaddenImages","3_1280_800_ratio.jpg")),
	# part of delta project
	project_id: projects[0].id
	},
	{
	name: "Item 4",
	description: "foo",
	price: 3.5, shipping: 3.5,
	shopifyid: "MyShopifyIdString",
	categories: [categories[0]],
	imageStyleOne: File.open(Rails.root.join("db/seeds/ShimellMaddenImages","4_1280_800_ratio.jpg")),
	collection_id: collections[2].id
	},
	{
	name: "Brooch",
	description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit lacus ligula, pellentesque sed pellent esque vitae, porta vel leo.",
	price: 3.5, shipping: 3.5,
	shopifyid: "MyShopifyIdString",
	categories: [categories[0]],
	imageStyleOne: File.open(Rails.root.join("db/seeds/ShimellMaddenImages","5_1280_800_ratio.jpg")),
	archive: true,
	created_at: Date.parse("1st May 2013")
	},
	{
	name: "Item 6",
	description: "foo",
	price: 3.5, shipping: 3.5,
	shopifyid: "MyShopifyIdString",
	categories: [categories[0]],
	imageStyleOne: File.open(Rails.root.join("db/seeds/ShimellMaddenImages","6_1280_800_ratio.jpg")),
	collection_id: collections[1].id
	},
	{
	name: "Item 7",
	description: "foo",
	price: 3.5, shipping: 3.5,
	shopifyid: "MyShopifyIdString",
	categories: [categories[1]],
	imageStyleOne: File.open(Rails.root.join("db/seeds/ShimellMaddenImages","7_1280_800_ratio.jpg")),
	# part of test project
	project_id: projects[3].id
	},
	{
	name: "Item 8",
	description: "foo",
	price: 3.5, shipping: 3.5,
	shopifyid: "MyShopifyIdString",
	categories: [categories[1]],
	imageStyleOne: File.open(Rails.root.join("db/seeds/ShimellMaddenImages","8_1280_800_ratio.jpg")),
	project_id: projects[2].id
	},
	{
	name: "Item 9",
	description: "foo",
	price: 3.5, shipping: 3.5,
	shopifyid: "MyShopifyIdString",
	categories: [categories[2]],
	imageStyleOne: File.open(Rails.root.join("db/seeds/ShimellMaddenImages","9_1280_800_ratio.jpg")),
	collection_id: collections[1].id
	},
	{
	name: "Bangles",
	description: "foo",
	price: 13.50,
	shipping: 4.50,
	shopifyid: "MyShopifyIdString",
	categories: [categories[1]],
	imageStyleOne: File.open(Rails.root.join("db/seeds/ShimellMaddenImages","10_1280_800_ratio.jpg")),
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
	imageStyleOne: File.open(Rails.root.join("db/seeds/ShimellMaddenImages","11_no_ratio.jpg")),
	},
	{
	name: "Item 12",
	description: "foo",
	price: 3.5, shipping: 3.5,
	shopifyid: "MyShopifyIdString",
	archive: true,
	categories: [categories[2]],
	imageStyleOne: File.open(Rails.root.join("db/seeds","1800x1286-purple.gif")),
	# imageStyleTwo: File.open(Rails.root.join("db/seeds","1286x1286-green.gif")),
	# imageStyleThree: File.open(Rails.root.join("db/seeds","977x1286-cherry.gif")),
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
	# imageStyleTwo: File.open(Rails.root.join("db/seeds","1286x1286-green.gif")),
	# imageStyleThree: File.open(Rails.root.join("db/seeds","977x1286-cherry.gif")),
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
	# imageStyleTwo: File.open(Rails.root.join("db/seeds","1286x1286-green.gif")),
	# imageStyleThree: File.open(Rails.root.join("db/seeds","977x1286-cherry.gif")),
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
	# imageStyleTwo: File.open(Rails.root.join("db/seeds","1286x1286-green.gif")),
	# imageStyleThree: File.open(Rails.root.join("db/seeds","977x1286-cherry.gif")),
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
	# imageStyleTwo: File.open(Rails.root.join("db/seeds","1286x1286-green.gif")),
	# imageStyleThree: File.open(Rails.root.join("db/seeds","977x1286-cherry.gif")),
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
	# imageStyleTwo: File.open(Rails.root.join("db/seeds","1286x1286-green.gif")),
	# imageStyleThree: File.open(Rails.root.join("db/seeds","977x1286-cherry.gif")),
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
	# imageStyleTwo: File.open(Rails.root.join("db/seeds","1286x1286-green.gif")),
	# imageStyleThree: File.open(Rails.root.join("db/seeds","977x1286-cherry.gif")),
	project_id: projects[5].id
	created_at: Date.parse("1st July 2013")
	},
	{
	name: "Item 19",
	description: "foo",
	price: 3.5, shipping: 3.5,
	shopifyid: "MyShopifyIdString",
	archive: true,
	categories: [categories[3]],
	imageStyleOne: File.open(Rails.root.join("db/seeds","1800x1286-purple.gif")),
	# imageStyleTwo: File.open(Rails.root.join("db/seeds","1286x1286-green.gif")),
	# imageStyleThree: File.open(Rails.root.join("db/seeds","977x1286-cherry.gif")),
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
	# imageStyleTwo: File.open(Rails.root.join("db/seeds","1286x1286-green.gif")),
	# imageStyleThree: File.open(Rails.root.join("db/seeds","977x1286-cherry.gif")),
	project_id: projects[3].id
	created_at: Date.parse("7th December 2013")
	},
	{
	name: "Item 21",
	description: "foo",
	price: 3.5, shipping: 3.5,
	shopifyid: "MyShopifyIdString",
	archive: true,
	categories: [categories[2]],
	imageStyleOne: File.open(Rails.root.join("db/seeds","1800x1286-purple.gif")),
	# imageStyleTwo: File.open(Rails.root.join("db/seeds","1286x1286-green.gif")),
	# imageStyleThree: File.open(Rails.root.join("db/seeds","977x1286-cherry.gif")),
	project_id: projects[2].id
	created_at: Date.parse("5th January 2014")
	},
	{
	name: "Item 22",
	description: "foo",
	price: 3.5, shipping: 3.5,
	shopifyid: "MyShopifyIdString",
	archive: true,
	categories: [categories[2]],
	imageStyleOne: File.open(Rails.root.join("db/seeds","1800x1286-green.gif")),
	# imageStyleTwo: File.open(Rails.root.join("db/seeds","1286x1286-green.gif")),
	# imageStyleThree: File.open(Rails.root.join("db/seeds","977x1286-cherry.gif")),
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
	# imageStyleTwo: File.open(Rails.root.join("db/seeds","1286x1286-green.gif")),
	# imageStyleThree: File.open(Rails.root.join("db/seeds","977x1286-cherry.gif")),
	project_id: projects[1].id
	}



])