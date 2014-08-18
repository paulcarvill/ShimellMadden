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
		blogImage1: File.open(Rails.root.join("db/seeds/news","news1.jpg"))
	},
	{
		headline: "News headline two",
		body: "<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor.</p><p>
Reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>",
		blogImage1: File.open(Rails.root.join("db/seeds/news","news2.jpg"))
	},
	{
		headline: "News headline three",
		body: "<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor.</p><p>
Reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>",
		blogImage1: File.open(Rails.root.join("db/seeds/news","news3.jpg"))
	},
	{
		headline: "News headline four",
		body: "<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor.</p><p>
Reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>",
		blogImage1: File.open(Rails.root.join("db/seeds/news","news4.jpg"))
	},
	{
		headline: "News headline five",
		body: "<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor.</p><p>
Reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>",
		blogImage1: File.open(Rails.root.join("db/seeds/news","news1.jpg")),
		blogImage2: File.open(Rails.root.join("db/seeds/news","news2.jpg")),
		blogImage3: File.open(Rails.root.join("db/seeds/news","news3.jpg"))
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
		blogImage1: File.open(Rails.root.join("db/seeds/news","news1.jpg"))
	},
	{
		headline: "News headline eight",
		body: "<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor.</p><p>
Reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>",
		blogImage1: File.open(Rails.root.join("db/seeds/news","news2.jpg"))
	},
	{
		headline: "News headline nine",
		body: "<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor.</p><p>
Reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>",
		blogImage1: File.open(Rails.root.join("db/seeds/news","news3.jpg"))
	},
	{
		headline: "News headline ten",
		body: "<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor.</p><p>
Reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>",
		blogImage1: File.open(Rails.root.join("db/seeds/news","news4.jpg"))
	},
	{
		headline: "News headline eleven",
		body: "<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor.</p><p>
Reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>"
	},
	{
		headline: "News headline twelve",
		body: "<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor.</p><p>
Reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>",
		blogImage1: File.open(Rails.root.join("db/seeds/news","news3.jpg")),
		blogImage2: File.open(Rails.root.join("db/seeds/news","news2.jpg")),
		blogImage3: File.open(Rails.root.join("db/seeds/news","news1.jpg"))
	},
	{
		headline: "News headline thirteen",
		body: "<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor.</p><p>
Reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>",
		blogImage1: File.open(Rails.root.join("db/seeds/news","news2.jpg"))
	},
	{
		headline: "News headline fourteen",
		body: "<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor.</p><p>
Reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>",
		blogImage1: File.open(Rails.root.join("db/seeds/news","news3.jpg"))
	},
	{
		headline: "News headline fifteen",
		body: "<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor.</p><p>
Reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>",
		blogImage1: File.open(Rails.root.join("db/seeds/news","news4.jpg"))
	},
	{
		headline: "News headline sixteen",
		body: "<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor.</p><p>
Reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>"
	}
])



groups = Group.create([

	###### COLLECTIONS ######
	{
		name: "Cuboid",
		description: "Simple symbols of dimension and perspective.",
		grouptype: "Collection"
	},
	{
		name: "Centric",
		description: "Lorem ipsum contain all the record creation needed to seed.",
		grouptype: "Collection"
	},
	{
		name: "Symmetry",
		description: "Ecord creation seeded lorem ipsum contain all the re.",
		grouptype: "Collection"
	},

	###### PROJECTS ######
	{
		name: "Delta",
		description: "Loreord creaed to seeon needin all the recum ipsum contatid.",
		grouptype: "Project"
	},
	{
		name: "Key",
		description: "Ecord creation seeded lorem ipsum contain all the re.",
		grouptype: "Project"
	},
	{
		name: "Metric",
		description: "Lorem ipsum contain all the record creation needed to seed.",
		grouptype: "Project"
	},
	{
		name: "Test",
		description: "Loreord creaed to seeon needin all the recum ipsum contatid.",
		grouptype: "Project"
	},
	{
		name: "Project Five",
		description: "Lorem ipsum contain all the record creation needed to seed.",
		grouptype: "Project"
	},
	{
		name: "Project Six",
		description: "Loreord creaed to seeon needin all the recum ipsum contatid.",
		grouptype: "Project"
	},
	{
		name: "Project Seven",
		description: "Ecord creation seeded lorem ipsum contain all the re.",
		grouptype: "Project"
	},
	{
		name: "Project Eight",
		description: "Loreord creaed to seeon needin all the recum ipsum contatid.",
		grouptype: "Project"
	},

	###### ARCHIVE ######
	{
		name: "Archive",
		description: "Archived items",
		grouptype: "Archive"
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



Image.create([
	###### COLLECTION IMAGES ######
	{
		large: File.open(Rails.root.join("db/seeds/ShimellMaddenImages","1_1280_800_ratio.jpg")),
		small: File.open(Rails.root.join("db/seeds/ShimellMaddenImages","1_1280_800_ratio.jpg")),
		group_id: groups[0].id,
		homepage: true,
		description: "Optional collection description text goes here."
	},
	{
		large: File.open(Rails.root.join("db/seeds/ShimellMaddenImages","2_1280_800_ratio.jpg")),
		small: File.open(Rails.root.join("db/seeds/ShimellMaddenImages","2_1280_800_ratio.jpg")),
		group_id: groups[1].id,
		homepage: true,
		description: "Optional collection description text goes here."
	},
	{
		large: File.open(Rails.root.join("db/seeds/ShimellMaddenImages","3_1280_800_ratio.jpg")),
		small: File.open(Rails.root.join("db/seeds/ShimellMaddenImages","3_1280_800_ratio.jpg")),
		group_id: groups[2].id,
		homepage: true
	},
	{
		large: File.open(Rails.root.join("db/seeds/ShimellMaddenImages","4_1280_800_ratio.jpg")),
		small: File.open(Rails.root.join("db/seeds/ShimellMaddenImages","4_1280_800_ratio.jpg")),
		group_id: groups[0].id,
		homepage: false,
		description: "Optional collection description text goes here."
	},
	{
		large: File.open(Rails.root.join("db/seeds/ShimellMaddenImages","5_1280_800_ratio.jpg")),
		small: File.open(Rails.root.join("db/seeds/ShimellMaddenImages","5_1280_800_ratio.jpg")),
		group_id: groups[1].id,
		homepage: false
	},
	{
		large: File.open(Rails.root.join("db/seeds/ShimellMaddenImages","6_1280_800_ratio.jpg")),
		small: File.open(Rails.root.join("db/seeds/ShimellMaddenImages","6_1280_800_ratio.jpg")),
		group_id: groups[2].id,
		homepage: false,
		description: "Optional collection description text goes here."
	},
	{
		large: File.open(Rails.root.join("db/seeds/ShimellMaddenImages","7_1280_800_ratio.jpg")),
		small: File.open(Rails.root.join("db/seeds/ShimellMaddenImages","7_1280_800_ratio.jpg")),
		group_id: groups[0].id,
		homepage: false
	},
	{
		large: File.open(Rails.root.join("db/seeds/ShimellMaddenImages","8_1280_800_ratio.jpg")),
		small: File.open(Rails.root.join("db/seeds/ShimellMaddenImages","8_1280_800_ratio.jpg")),
		group_id: groups[1].id,
		homepage: false
	},
	{
		large: File.open(Rails.root.join("db/seeds/ShimellMaddenImages","9_1280_800_ratio.jpg")),
		small: File.open(Rails.root.join("db/seeds/ShimellMaddenImages","9_1280_800_ratio.jpg")),
		group_id: groups[2].id,
		homepage: false
	},
	{
		large: File.open(Rails.root.join("db/seeds/ShimellMaddenImages","10_1280_800_ratio.jpg")),
		small: File.open(Rails.root.join("db/seeds/ShimellMaddenImages","10_1280_800_ratio.jpg")),
		group_id: groups[0].id,
		homepage: false
	},
	{
		large: File.open(Rails.root.join("db/seeds/ShimellMaddenImages","12_1280_800_ratio.jpg")),
		small: File.open(Rails.root.join("db/seeds/ShimellMaddenImages","12_1280_800_ratio.jpg")),
		group_id: groups[2].id,
		homepage: false,
		description: "Optional collection description text goes here."
	},
	{
		large: File.open(Rails.root.join("db/seeds/ShimellMaddenImages","13_1280_800_ratio.jpg")),
		small: File.open(Rails.root.join("db/seeds/ShimellMaddenImages","13_1280_800_ratio.jpg")),
		group_id: groups[0].id,
		homepage: false
	},
	{
		large: File.open(Rails.root.join("db/seeds/ShimellMaddenImages","14_800_1280_ratio.jpg")),
		small: File.open(Rails.root.join("db/seeds/ShimellMaddenImages","14_800_1280_ratio.jpg")),
		group_id: groups[1].id,
		homepage: false
	},
	{
		large: File.open(Rails.root.join("db/seeds/ShimellMaddenImages","15_1280_800_ratio.jpg")),
		small: File.open(Rails.root.join("db/seeds/ShimellMaddenImages","15_1280_800_ratio.jpg")),
		group_id: groups[2].id,
		homepage: false,
		description: "Optional collection description text goes here."
	},
	{
		large: File.open(Rails.root.join("db/seeds/ShimellMaddenImages","16_800_1280_ratio.jpg")),
		small: File.open(Rails.root.join("db/seeds/ShimellMaddenImages","16_800_1280_ratio.jpg")),
		group_id: groups[0].id,
		homepage: false,
		description: "Optional collection description text goes here."
	},
	{
		large: File.open(Rails.root.join("db/seeds/ShimellMaddenImages","17_1280_800_ratio.jpg")),
		small: File.open(Rails.root.join("db/seeds/ShimellMaddenImages","17_1280_800_ratio.jpg")),
		group_id: groups[1].id,
		homepage: false,
		description: "Optional collection description text goes here."
	},
	{
		large: File.open(Rails.root.join("db/seeds/ShimellMaddenImages","18_1280_800_ratio.jpg")),
		small: File.open(Rails.root.join("db/seeds/ShimellMaddenImages","18_1280_800_ratio.jpg")),
		group_id: groups[2].id,
		homepage: false
	},
	{
		large: File.open(Rails.root.join("db/seeds/ShimellMaddenImages","19_1280_800_ratio.jpg")),
		small: File.open(Rails.root.join("db/seeds/ShimellMaddenImages","19_1280_800_ratio.jpg")),
		group_id: groups[0].id,
		homepage: false,
		description: "Optional collection description text goes here."
	},
	{
		large: File.open(Rails.root.join("db/seeds/ShimellMaddenImages","20_1280_800_ratio.jpg")),
		small: File.open(Rails.root.join("db/seeds/ShimellMaddenImages","20_1280_800_ratio.jpg")),
		group_id: groups[1].id,
		homepage: false
	},
	{
		large: File.open(Rails.root.join("db/seeds/ShimellMaddenImages","21_1280_800_ratio.jpg")),
		small: File.open(Rails.root.join("db/seeds/ShimellMaddenImages","21_1280_800_ratio.jpg")),
		group_id: groups[2].id,
		homepage: false,
		description: "Optional collection description text goes here."
	},

	###### PROJECT IMAGES ######

	{
		large: File.open(Rails.root.join("db/seeds/ShimellMaddenImages","1_1280_800_ratio.jpg")),
		small: File.open(Rails.root.join("db/seeds/ShimellMaddenImages","1_1280_800_ratio.jpg")),
		group_id: groups[3].id,
		homepage: true,
		description: "Optional project description text goes here."
	},
	{
		large: File.open(Rails.root.join("db/seeds/ShimellMaddenImages","2_1280_800_ratio.jpg")),
		small: File.open(Rails.root.join("db/seeds/ShimellMaddenImages","2_1280_800_ratio.jpg")),
		group_id: groups[3].id,
		homepage: true,
		description: "Optional project description text goes here."
	},
	{
		large: File.open(Rails.root.join("db/seeds/ShimellMaddenImages","3_1280_800_ratio.jpg")),
		small: File.open(Rails.root.join("db/seeds/ShimellMaddenImages","3_1280_800_ratio.jpg")),
		group_id: groups[3].id,
		homepage: true,
		description: "Optional project description text goes here."
	},
	{
		large: File.open(Rails.root.join("db/seeds/ShimellMaddenImages","4_1280_800_ratio.jpg")),
		small: File.open(Rails.root.join("db/seeds/ShimellMaddenImages","4_1280_800_ratio.jpg")),
		group_id: groups[4].id,
		homepage: false
	},
	{
		large: File.open(Rails.root.join("db/seeds/ShimellMaddenImages","5_1280_800_ratio.jpg")),
		small: File.open(Rails.root.join("db/seeds/ShimellMaddenImages","5_1280_800_ratio.jpg")),
		group_id: groups[5].id,
		homepage: false,
		description: "Optional project description text goes here."
	},
	{
		large: File.open(Rails.root.join("db/seeds/ShimellMaddenImages","6_1280_800_ratio.jpg")),
		small: File.open(Rails.root.join("db/seeds/ShimellMaddenImages","6_1280_800_ratio.jpg")),
		group_id: groups[6].id,
		homepage: false
	},
	{
		large: File.open(Rails.root.join("db/seeds/ShimellMaddenImages","7_1280_800_ratio.jpg")),
		small: File.open(Rails.root.join("db/seeds/ShimellMaddenImages","7_1280_800_ratio.jpg")),
		group_id: groups[7].id,
		homepage: false
	},
	{
		large: File.open(Rails.root.join("db/seeds/ShimellMaddenImages","8_1280_800_ratio.jpg")),
		small: File.open(Rails.root.join("db/seeds/ShimellMaddenImages","8_1280_800_ratio.jpg")),
		group_id: groups[8].id,
		homepage: false
	},
	{
		large: File.open(Rails.root.join("db/seeds/ShimellMaddenImages","9_1280_800_ratio.jpg")),
		small: File.open(Rails.root.join("db/seeds/ShimellMaddenImages","9_1280_800_ratio.jpg")),
		group_id: groups[9].id,
		homepage: false,
		description: "Optional project description text goes here."
	},
	{
		large: File.open(Rails.root.join("db/seeds/ShimellMaddenImages","10_1280_800_ratio.jpg")),
		small: File.open(Rails.root.join("db/seeds/ShimellMaddenImages","10_1280_800_ratio.jpg")),
		group_id: groups[10].id,
		homepage: false
	},
	{
		large: File.open(Rails.root.join("db/seeds/ShimellMaddenImages","12_1280_800_ratio.jpg")),
		small: File.open(Rails.root.join("db/seeds/ShimellMaddenImages","12_1280_800_ratio.jpg")),
		group_id: groups[5].id,
		homepage: false,
		description: "Optional project description text goes here."
	},
	{
		large: File.open(Rails.root.join("db/seeds/ShimellMaddenImages","13_1280_800_ratio.jpg")),
		small: File.open(Rails.root.join("db/seeds/ShimellMaddenImages","13_1280_800_ratio.jpg")),
		group_id: groups[7].id,
		homepage: false
	},
	{
		large: File.open(Rails.root.join("db/seeds/ShimellMaddenImages","14_800_1280_ratio.jpg")),
		small: File.open(Rails.root.join("db/seeds/ShimellMaddenImages","14_800_1280_ratio.jpg")),
		group_id: groups[7].id,
		homepage: false
	},
	{
		large: File.open(Rails.root.join("db/seeds/ShimellMaddenImages","15_1280_800_ratio.jpg")),
		small: File.open(Rails.root.join("db/seeds/ShimellMaddenImages","15_1280_800_ratio.jpg")),
		group_id: groups[8].id,
		homepage: false
	},
	{
		large: File.open(Rails.root.join("db/seeds/ShimellMaddenImages","16_800_1280_ratio.jpg")),
		small: File.open(Rails.root.join("db/seeds/ShimellMaddenImages","16_800_1280_ratio.jpg")),
		group_id: groups[3].id,
		homepage: false,
		description: "Optional project description text goes here."
	},
	{
		large: File.open(Rails.root.join("db/seeds/ShimellMaddenImages","17_1280_800_ratio.jpg")),
		small: File.open(Rails.root.join("db/seeds/ShimellMaddenImages","17_1280_800_ratio.jpg")),
		group_id: groups[4].id,
		homepage: false,
		description: "Optional project description text goes here."
	},
	{
		large: File.open(Rails.root.join("db/seeds/ShimellMaddenImages","18_1280_800_ratio.jpg")),
		small: File.open(Rails.root.join("db/seeds/ShimellMaddenImages","18_1280_800_ratio.jpg")),
		group_id: groups[5].id,
		homepage: false
	},
	{
		large: File.open(Rails.root.join("db/seeds/ShimellMaddenImages","19_1280_800_ratio.jpg")),
		small: File.open(Rails.root.join("db/seeds/ShimellMaddenImages","19_1280_800_ratio.jpg")),
		group_id: groups[6].id,
		homepage: false
	},
	{
		large: File.open(Rails.root.join("db/seeds/ShimellMaddenImages","20_1280_800_ratio.jpg")),
		small: File.open(Rails.root.join("db/seeds/ShimellMaddenImages","20_1280_800_ratio.jpg")),
		group_id: groups[7].id,
		homepage: false,
		description: "Optional project description text goes here."
	},
	{
		large: File.open(Rails.root.join("db/seeds/ShimellMaddenImages","21_1280_800_ratio.jpg")),
		small: File.open(Rails.root.join("db/seeds/ShimellMaddenImages","21_1280_800_ratio.jpg")),
		group_id: groups[8].id,
		homepage: false
	},
	###### ARCHIVE ITEMS ######
	{
		large: File.open(Rails.root.join("db/seeds/ShimellMaddenImages","20_1280_800_ratio.jpg")),
		small: File.open(Rails.root.join("db/seeds/ShimellMaddenImages","20_1280_800_ratio.jpg")),
		group_id: groups[11].id,
		homepage: false,
		created_at: Date.parse("1st May 2013"),
		categories: [categories[2]],
		name: "Archive Item 1",
		description: "Optional description text goes here."
	},
	{
		large: File.open(Rails.root.join("db/seeds/ShimellMaddenImages","21_1280_800_ratio.jpg")),
		small: File.open(Rails.root.join("db/seeds/ShimellMaddenImages","21_1280_800_ratio.jpg")),
		group_id: groups[11].id,
		homepage: false,
		created_at: Date.parse("5th May 2013"),
		categories: [categories[0]],
		name: "Archive Item 2",
		description: "Optional description text goes here."
	},
	{
		large: File.open(Rails.root.join("db/seeds/ShimellMaddenImages","19_1280_800_ratio.jpg")),
		small: File.open(Rails.root.join("db/seeds/ShimellMaddenImages","19_1280_800_ratio.jpg")),
		group_id: groups[11].id,
		homepage: false,
		created_at: Date.parse("1st June 2013"),
		categories: [categories[2]],
		name: "Archive Item 3",
		description: "Optional description text goes here."
	},
	{
		large: File.open(Rails.root.join("db/seeds/ShimellMaddenImages","18_1280_800_ratio.jpg")),
		small: File.open(Rails.root.join("db/seeds/ShimellMaddenImages","18_1280_800_ratio.jpg")),
		group_id: groups[11].id,
		homepage: false,
		created_at: Date.parse("1st July 2013"),
		categories: [categories[1]],
		name: "Archive Item 4"
	},
	{
		large: File.open(Rails.root.join("db/seeds/ShimellMaddenImages","17_1280_800_ratio.jpg")),
		small: File.open(Rails.root.join("db/seeds/ShimellMaddenImages","17_1280_800_ratio.jpg")),
		group_id: groups[11].id,
		homepage: false,
		created_at: Date.parse("1st July 2013"),
		categories: [categories[3]],
		name: "Archive Item 5"
	},
	{
		large: File.open(Rails.root.join("db/seeds/ShimellMaddenImages","16_800_1280_ratio.jpg")),
		small: File.open(Rails.root.join("db/seeds/ShimellMaddenImages","16_800_1280_ratio.jpg")),
		group_id: groups[11].id,
		homepage: false,
		created_at: Date.parse("1st July 2013"),
		categories: [categories[3]],
		name: "Archive Item 6",
		description: "Optional description text goes here."
	},
	{
		large: File.open(Rails.root.join("db/seeds/ShimellMaddenImages","15_1280_800_ratio.jpg")),
		small: File.open(Rails.root.join("db/seeds/ShimellMaddenImages","15_1280_800_ratio.jpg")),
		group_id: groups[11].id,
		homepage: false,
		created_at: Date.parse("1st September 2013"),
		categories: [categories[0]],
		name: "Archive Item 6"
	},
	{
		large: File.open(Rails.root.join("db/seeds/ShimellMaddenImages","14_800_1280_ratio.jpg")),
		small: File.open(Rails.root.join("db/seeds/ShimellMaddenImages","14_800_1280_ratio.jpg")),
		group_id: groups[11].id,
		homepage: false,
		created_at: Date.parse("1st November 2013"),
		categories: [categories[0]],
		name: "Archive Item 8",
		description: "Optional description text goes here."
	},
	{
		large: File.open(Rails.root.join("db/seeds/ShimellMaddenImages","13_1280_800_ratio.jpg")),
		small: File.open(Rails.root.join("db/seeds/ShimellMaddenImages","13_1280_800_ratio.jpg")),
		group_id: groups[11].id,
		homepage: false,
		created_at: Date.parse("1st November 2013"),
		categories: [categories[0]],
		name: "Archive Item 9"
	},
	{
		large: File.open(Rails.root.join("db/seeds/ShimellMaddenImages","12_1280_800_ratio.jpg")),
		small: File.open(Rails.root.join("db/seeds/ShimellMaddenImages","12_1280_800_ratio.jpg")),
		group_id: groups[11].id,
		homepage: false,
		created_at: Date.parse("1st February 2014"),
		categories: [categories[0]],
		name: "Archive Item 10",
		description: "Optional description text goes here."
	},
	{
		large: File.open(Rails.root.join("db/seeds/ShimellMaddenImages","11_no_ratio.jpg")),
		small: File.open(Rails.root.join("db/seeds/ShimellMaddenImages","11_no_ratio.jpg")),
		group_id: groups[11].id,
		homepage: false,
		created_at: Date.parse("1st February 2014"),
		categories: [categories[0]],
		name: "Archive Item 11"
	},
	{
		large: File.open(Rails.root.join("db/seeds/ShimellMaddenImages","10_1280_800_ratio.jpg")),
		small: File.open(Rails.root.join("db/seeds/ShimellMaddenImages","10_1280_800_ratio.jpg")),
		group_id: groups[11].id,
		homepage: false,
		created_at: Date.parse("1st August 2014"),
		categories: [categories[2]],
		name: "Archive Item 12",
		description: "Very long Optional description text goes here. Very long Optional description text goes here. Very long Optional description text goes here. Very long Optional description text goes here. Very long Optional description text goes here. Very long Optional description text goes here. "
	},
	{
		large: File.open(Rails.root.join("db/seeds/ShimellMaddenImages","9_1280_800_ratio.jpg")),
		small: File.open(Rails.root.join("db/seeds/ShimellMaddenImages","9_1280_800_ratio.jpg")),
		group_id: groups[11].id,
		homepage: false,
		created_at: Date.parse("1st August 2014"),
		categories: [categories[2]],
		name: "Archive Item 13"
	},
	{
		large: File.open(Rails.root.join("db/seeds/ShimellMaddenImages","8_1280_800_ratio.jpg")),
		small: File.open(Rails.root.join("db/seeds/ShimellMaddenImages","8_1280_800_ratio.jpg")),
		group_id: groups[11].id,
		homepage: false,
		created_at: Date.parse("1st August 2014"),
		categories: [categories[2]],
		name: "Archive Item 14",
		description: "Optional description text goes here."
	},
	{
		large: File.open(Rails.root.join("db/seeds/ShimellMaddenImages","7_1280_800_ratio.jpg")),
		small: File.open(Rails.root.join("db/seeds/ShimellMaddenImages","7_1280_800_ratio.jpg")),
		group_id: groups[11].id,
		homepage: false,
		created_at: Date.parse("1st August 2014"),
		categories: [categories[2]],
		name: "Archive Item 15"
	}
])