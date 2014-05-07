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
#ActiveRecord::FixtureSet.create_fixtures("#{Rails.root}/test/fixtures", "items")

Item.create([
	{
	name: "item0",
	description: "foo",
	price: 3.5, shipping: 3.5,
	shopifyid: "MyShopifyIdString",
	homepage: true,
	mainImage: File.open(Rails.root.join("db/seeds","ED_S_Mstill_R04F13.jpg"))
	},
	{
	name: "item0",
	description: "foo",
	price: 3.5, shipping: 3.5,
	shopifyid: "MyShopifyIdString",
	homepage: true,
	mainImage: File.open(Rails.root.join("db/seeds","1800x1286-black.gif"))
	},
	{
	name: "item0",
	description: "foo",
	price: 3.5, shipping: 3.5,
	shopifyid: "MyShopifyIdString",
	homepage: true,
	mainImage: File.open(Rails.root.join("db/seeds","1800x1286-charcoal.gif"))
	},
	{
	name: "item0",
	description: "foo",
	price: 3.5, shipping: 3.5,
	shopifyid: "MyShopifyIdString",
	homepage: true,
	mainImage: File.open(Rails.root.join("db/seeds","1800x1286-cherry.gif"))
	},
	{
	name: "item0",
	description: "foo",
	price: 3.5, shipping: 3.5,
	shopifyid: "MyShopifyIdString",
	homepage: true,
	mainImage: File.open(Rails.root.join("db/seeds","1800x1286-deepblue.gif"))
	},
	{
	name: "item0",
	description: "foo",
	price: 3.5, shipping: 3.5,
	shopifyid: "MyShopifyIdString",
	homepage: true,
	mainImage: File.open(Rails.root.join("db/seeds","1800x1286-green.gif"))
	},
	{
	name: "item0",
	description: "foo",
	price: 3.5, shipping: 3.5,
	shopifyid: "MyShopifyIdString",
	homepage: true,
	mainImage: File.open(Rails.root.join("db/seeds","1800x1286-olive.gif"))
	},
	{
	name: "item0",
	description: "foo",
	price: 3.5, shipping: 3.5,
	shopifyid: "MyShopifyIdString",
	homepage: true,
	mainImage: File.open(Rails.root.join("db/seeds","1800x1286-orange.gif"))
	},
	{
	name: "item0",
	description: "foo",
	price: 3.5, shipping: 3.5,
	shopifyid: "MyShopifyIdString",
	homepage: true,
	mainImage: File.open(Rails.root.join("db/seeds","1800x1286-pink.gif"))
	},
	{
	name: "item0",
	description: "foo",
	price: 3.5, shipping: 3.5,
	shopifyid: "MyShopifyIdString",
	homepage: true,
	mainImage: File.open(Rails.root.join("db/seeds","1800x1286-purple.gif"))
	}


])