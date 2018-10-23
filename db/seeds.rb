# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

paris = Destination.create(name: "Paris", climate: "warm", img_url: "https://www.telegraph.co.uk/content/dam/video_previews/v/2/v2exl2nje6lsczqgxklf2mh1qjkhmfu-xlarge.jpg", description: "Lorem ipsum dolor sit amet, sed illum persius ut. Denique facilisis accusamus sea ei. Nec velit debet epicuri ad, mea dicat velit labore eu. Duo et sint liber necessitatibus, ad movet nobis pro, mei ei viderer epicurei petentium.", budget: 1000, activity: "nightlife")

london = Destination.create(name: "London", climate: "rainy", img_url: "https://d2z6c3c3r6k4bx.cloudfront.net/uploads/event/logo/1053664/3d32524b03040a6202008072a8f24b6a.jpg", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.", budget: 1200, activity: "sight-seeing")
