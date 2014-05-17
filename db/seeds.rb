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

collections = Collection.create([
	{
		name: "Cuboid",
		description: "Simple symbols of dimension and perspective."
	},
	{
		name: "Collection Two",
		description: "Lorem ipsum contain all the record creation needed to seed."
	},
	{
		name: "Collection Three",
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
		name: "Project One",
		description: "Simple symbols of dimension and perspective."
	},
	{
		name: "Project Two",
		description: "Ecord creation seeded lorem ipsum contain all the re."
	},
	{
		name: "Project Three",
		description: "Lorem ipsum contain all the record creation needed to seed."
	},
	{
		name: "Project Four",
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

Item.create([
	{
	name: "Item 1",
	description: "foo",
	price: 3.5, shipping: 3.5,
	shopifyid: "MyShopifyIdString",
	homepage: true,
	categories: [categories[0]],
	mainImage: File.open(Rails.root.join("db/seeds","ED_S_Mstill_R04F13.jpg")),
	itemsImage: File.open(Rails.root.join("db/seeds","ED_S_Mstill_R04F13_1800x1010.jpg")),
	collection_id: collections[0].id
	},
	{
	name: "Item 2",
	description: "foo",
	price: 3.5, shipping: 3.5,
	shopifyid: "MyShopifyIdString",
	homepage: true,
	categories: [categories[0]],
	mainImage: File.open(Rails.root.join("db/seeds","1800x1286-black.gif")),
	itemsImage: File.open(Rails.root.join("db/seeds","1286x1286-black.gif")),
	collection_id: collections[0].id
	},
	{
	name: "Item 3",
	description: "foo",
	price: 3.5, shipping: 3.5,
	shopifyid: "MyShopifyIdString",
	homepage: true,
	categories: [categories[0]],
	mainImage: File.open(Rails.root.join("db/seeds","1800x1286-charcoal.gif")),
	itemsImage: File.open(Rails.root.join("db/seeds","977x1286-charcoal.gif")),
	collection_id: collections[0].id
	},
	{
	name: "Item 4",
	description: "foo",
	price: 3.5, shipping: 3.5,
	shopifyid: "MyShopifyIdString",
	categories: [categories[0]],
	mainImage: File.open(Rails.root.join("db/seeds","1800x1286-pink.gif")),
	itemsImage: File.open(Rails.root.join("db/seeds","1800x1139-pink.gif")),
	collection_id: collections[0].id
	},
	{
	name: "Item 5",
	description: "foo",
	price: 3.5, shipping: 3.5,
	shopifyid: "MyShopifyIdString",
	categories: [categories[0]],
	mainImage: File.open(Rails.root.join("db/seeds","1800x1286-deepblue.gif")),
	itemsImage: File.open(Rails.root.join("db/seeds","1800x1139-deepblue.gif")),
	collection_id: collections[1].id
	},
	{
	name: "Item 6",
	description: "foo",
	price: 3.5, shipping: 3.5,
	shopifyid: "MyShopifyIdString",
	categories: [categories[0]],
	mainImage: File.open(Rails.root.join("db/seeds","1800x1286-green.gif")),
	itemsImage: File.open(Rails.root.join("db/seeds","1800x1139-green.gif")),
	collection_id: collections[1].id
	},
	{
	name: "Item 7",
	description: "foo",
	price: 3.5, shipping: 3.5,
	shopifyid: "MyShopifyIdString",
	categories: [categories[1]],
	mainImage: File.open(Rails.root.join("db/seeds","1800x1286-olive.gif")),
	itemsImage: File.open(Rails.root.join("db/seeds","1800x1010-yellow.gif")),
	collection_id: collections[1].id
	},
	{
	name: "Item 8",
	description: "foo",
	price: 3.5, shipping: 3.5,
	shopifyid: "MyShopifyIdString",
	categories: [categories[1]],
	mainImage: File.open(Rails.root.join("db/seeds","1800x1286-orange.gif")),
	itemsImage: File.open(Rails.root.join("db/seeds","1286x1286-orange.gif")),
	collection_id: collections[1].id
	},
	{
	name: "Item 9",
	description: "foo",
	price: 3.5, shipping: 3.5,
	shopifyid: "MyShopifyIdString",
	categories: [categories[2]],
	mainImage: File.open(Rails.root.join("db/seeds","1800x1286-cherry.gif")),
	itemsImage: File.open(Rails.root.join("db/seeds","977x1286-cherry.gif")),
	collection_id: collections[2].id
	},
	{
	name: "Item 10",
	description: "foo",
	price: 3.5, shipping: 3.5,
	shopifyid: "MyShopifyIdString",
	categories: [categories[1]],
	mainImage: File.open(Rails.root.join("db/seeds","1800x1286-purple.gif")),
	itemsImage: File.open(Rails.root.join("db/seeds","1800x1139-purple.gif")),
	project_id: projects[0].id
	},
	{
	name: "Item 11",
	description: "foo",
	price: 3.5, shipping: 3.5,
	shopifyid: "MyShopifyIdString",
	archive: true,
	categories: [categories[1]],
	mainImage: File.open(Rails.root.join("db/seeds","1800x1286-purple.gif")),
	itemsImage: File.open(Rails.root.join("db/seeds","1800x1139-purple.gif")),
	project_id: projects[0].id
	},
	{
	name: "Item 12",
	description: "foo",
	price: 3.5, shipping: 3.5,
	shopifyid: "MyShopifyIdString",
	archive: true,
	categories: [categories[2]],
	mainImage: File.open(Rails.root.join("db/seeds","1800x1286-purple.gif")),
	itemsImage: File.open(Rails.root.join("db/seeds","1800x1139-purple.gif")),
	project_id: projects[0].id
	},
	{
	name: "Item 13",
	description: "foo",
	price: 3.5, shipping: 3.5,
	shopifyid: "MyShopifyIdString",
	archive: true,
	categories: [categories[3], categories[2]],
	mainImage: File.open(Rails.root.join("db/seeds","1800x1286-purple.gif")),
	itemsImage: File.open(Rails.root.join("db/seeds","1800x1139-purple.gif")),
	project_id: projects[0].id
	},
	{
	name: "Item 14",
	description: "foo",
	price: 3.5, shipping: 3.5,
	shopifyid: "MyShopifyIdString",
	archive: true,
	categories: [categories[3]],
	mainImage: File.open(Rails.root.join("db/seeds","1800x1286-purple.gif")),
	itemsImage: File.open(Rails.root.join("db/seeds","1800x1139-purple.gif")),
	project_id: projects[0].id
	},
	{
	name: "Item 15",
	description: "foo",
	price: 3.5, shipping: 3.5,
	shopifyid: "MyShopifyIdString",
	archive: true,
	categories: [categories[1]],
	mainImage: File.open(Rails.root.join("db/seeds","1800x1286-purple.gif")),
	itemsImage: File.open(Rails.root.join("db/seeds","1800x1139-purple.gif")),
	project_id: projects[0].id
	},
	{
	name: "Item 16",
	description: "foo",
	price: 3.5, shipping: 3.5,
	shopifyid: "MyShopifyIdString",
	archive: true,
	categories: [categories[1]],
	mainImage: File.open(Rails.root.join("db/seeds","1800x1286-purple.gif")),
	itemsImage: File.open(Rails.root.join("db/seeds","1800x1139-purple.gif")),
	project_id: projects[7].id
	},
	{
	name: "Item 17",
	description: "foo",
	price: 3.5, shipping: 3.5,
	shopifyid: "MyShopifyIdString",
	archive: true,
	categories: [categories[2]],
	mainImage: File.open(Rails.root.join("db/seeds","1800x1286-purple.gif")),
	itemsImage: File.open(Rails.root.join("db/seeds","1800x1139-purple.gif")),
	project_id: projects[6].id
	},
	{
	name: "Item 18",
	description: "foo",
	price: 3.5, shipping: 3.5,
	shopifyid: "MyShopifyIdString",
	archive: true,
	categories: [categories[1]],
	mainImage: File.open(Rails.root.join("db/seeds","1800x1286-orange.gif")),
	itemsImage: File.open(Rails.root.join("db/seeds","1800x1010-yellow.gif")),
	project_id: projects[5].id
	},
	{
	name: "Item 19",
	description: "foo",
	price: 3.5, shipping: 3.5,
	shopifyid: "MyShopifyIdString",
	archive: true,
	categories: [categories[3]],
	mainImage: File.open(Rails.root.join("db/seeds","1800x1286-purple.gif")),
	itemsImage: File.open(Rails.root.join("db/seeds","1800x1139-purple.gif")),
	project_id: projects[4].id
	},
	{
	name: "Item 20",
	description: "foo",
	price: 3.5, shipping: 3.5,
	shopifyid: "MyShopifyIdString",
	archive: true,
	categories: [categories[2]],
	mainImage: File.open(Rails.root.join("db/seeds","1800x1286-cherry.gif")),
	itemsImage: File.open(Rails.root.join("db/seeds","977x1286-cherry.gif")),
	project_id: projects[3].id
	},
	{
	name: "Item 21",
	description: "foo",
	price: 3.5, shipping: 3.5,
	shopifyid: "MyShopifyIdString",
	archive: true,
	categories: [categories[2]],
	mainImage: File.open(Rails.root.join("db/seeds","1800x1286-purple.gif")),
	itemsImage: File.open(Rails.root.join("db/seeds","1800x1139-purple.gif")),
	project_id: projects[2].id
	},
	{
	name: "Item 22",
	description: "foo",
	price: 3.5, shipping: 3.5,
	shopifyid: "MyShopifyIdString",
	archive: true,
	categories: [categories[2]],
	mainImage: File.open(Rails.root.join("db/seeds","1800x1286-green.gif")),
	itemsImage: File.open(Rails.root.join("db/seeds","1286x1286-green.gif")),
	project_id: projects[1].id
	},
	{
	name: "Item 23",
	description: "foo",
	price: 3.5, shipping: 3.5,
	shopifyid: "MyShopifyIdString",
	archive: true,
	categories: [categories[1]],
	mainImage: File.open(Rails.root.join("db/seeds","1800x1286-purple.gif")),
	itemsImage: File.open(Rails.root.join("db/seeds","1800x1139-purple.gif")),
	project_id: projects[1].id
	}



])