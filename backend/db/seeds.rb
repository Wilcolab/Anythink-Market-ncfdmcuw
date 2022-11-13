100.times do
	rand_part = Random.hex[0..10]
	user = User.create! email: "#{rand_part}@test.com", password: rand_part, username: "user#{rand_part}"
	item = Item.create! title: "test item #{rand_part}", description: 'amazing', user: user
	comment = Comment.create! user: user, item: item, body: 'a comment is here'
end
