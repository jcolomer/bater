User.create({name: "Rob", username: "rob", email: "robert.n.kramer@gmail.com", password: "123456"})

User.create({name: "Danny", username: "danny", email: "dannyevega@gmail.com", password: "123456"})

User.create({name: "Juan", username: "juan", email: "jpmendez@gmail.com", password: "123456"})

User.create({name: "Nate", username: "nate", email: "nbeers22@gmail.com", password: "123456"})

User.create({name: "Stan", username: "stan", email: "stanley.szeto@sbcglobal.net", password: "123456"})

User.create({name: "Julio", username: "julio", email: "julio@gmail.com", password: "123456"})

UserFollowing.create(user_id: 1, user_following_id: 2)

UserFollowing.create(user_id: 1, user_following_id: 3)

UserFollowing.create(user_id: 1, user_following_id: 4)

UserFollowing.create(user_id: 2, user_following_id: 1)

UserFollowing.create(user_id: 2, user_following_id: 3)

UserFollowing.create(user_id: 2, user_following_id: 4)

UserFollowing.create(user_id: 3, user_following_id: 1)

UserFollowing.create(user_id: 3, user_following_id: 2)
UserFollowing.create(user_id: 3, user_following_id: 4)
UserFollowing.create(user_id: 4, user_following_id: 1)
UserFollowing.create(user_id: 4, user_following_id: 2)
UserFollowing.create(user_id: 4, user_following_id: 3)
UserFollowing.create(user_id: 5, user_following_id: 1)
UserFollowing.create(user_id: 5, user_following_id: 2)
UserFollowing.create(user_id: 5, user_following_id: 3)
UserFollowing.create(user_id: 5, user_following_id: 4)
UserFollowing.create(user_id: 6, user_following_id: 1)
UserFollowing.create(user_id: 6, user_following_id: 2)
UserFollowing.create(user_id: 6, user_following_id: 4)
UserFollowing.create(user_id: 6, user_following_id: 3)

Squeak.create(content: "First squeak from Rob", user_id: 1)
Squeak.create(content: "Second squeak from Rob", user_id: 1)
Squeak.create(content: "Third squeak from Rob", user_id: 1)

Squeak.create(content: "First squeak from Juan", user_id: 3)
Squeak.create(content: "Second squeak from Juan", user_id: 3)
Squeak.create(content: "Third squeak from Juan", user_id: 3)

Squeak.create(content: "First squeak from Danny", user_id: 2)
Squeak.create(content: "Second squeak from Danny", user_id: 2)
Squeak.create(content: "Third squeak from Danny", user_id: 2)

Squeak.create(content: "First squeak from Nate", user_id: 4)
Squeak.create(content: "Second squeak from Nate", user_id: 4)
Squeak.create(content: "Third squeak from Nate", user_id: 4)

Squeak.create(content: "First squeak from Stan", user_id: 5)
Squeak.create(content: "Second squeak from Stan", user_id: 5)
Squeak.create(content: "Third squeak from Stan", user_id: 5)

Squeak.create(content: "First squeak from Julio", user_id: 6)
Squeak.create(content: "Second squeak from Julio", user_id: 6)
Squeak.create(content: "Third squeak from Julio", user_id: 6)
