# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#   first quote
post1 = Post.new
post1.title "Jacques Yves Cousteau"
post1.kind = "text"
post1.content = "Mankind has probably done more damage to the Earth in the 20th century than in all of previous human history."
post1.save

2.times do
	post1.hearts.create
end

# 2nd quote
post2 = Post.new
post2.title "Martin Scorsese"
post2.kind = "text"
post2.content = "Film in the 20th century, it's the American art form, like jazz.."
post2.save

5.times { post2.hearts.create }

# 3nd quote with image
post3 = Post.create{
title: "Julie Andrews,"
kind: "image"
content: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQRj9JRo-JiTARUpwtssGoEdM-wVeufPDpuUiQUdx4e1Mc7kHdMQ.jpg"
}


8.times { post3.hearts.create }

# 4th quote with image
post4 = Post.new
post4.title "Salvador Dali"
post4.kind = "image"
post4.content = "http://twistedsifter.files.wordpress.com/2012/03/salvador-dali-famous-quote-perfection-art-creativity1.jpg"
post4.save

8.times { post4.hearts.create }