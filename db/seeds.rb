User.create({name: "Rob", username: "rob", email: "rob@email.com", password: "robpassword"})

User.create({name: "Danny", username: "danny", email: "danny@email.com", password: "dannypassword"})

User.create({name: "Juan", username: "juan", email: "juan@email.com", password: "juanpassword"})

UserFollowing.create(user_id: 1, user_following_id: 2)

UserFollowing.create(user_id: 1, user_following_id: 3)
