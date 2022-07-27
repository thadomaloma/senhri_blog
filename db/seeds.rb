User.create!(first_name: "test_first1", last_name: "test_last1", email: "test1@gmail.com", birthdate: "2022-07-06 00:00:00", gender: "male", password: "123456", password_confirmation: "123456")
User.create!(first_name: "test_first2", last_name: "test_last2", email: "test2@gmail.com", birthdate: "2022-07-06 00:00:00", gender: "male", password: "123456", password_confirmation: "123456")
User.create!(first_name: "test_first3", last_name: "test_last3", email: "test3@gmail.com", birthdate: "2022-07-06 00:00:00", gender: "male", password: "123456", password_confirmation: "123456")
User.create!(first_name: "test_first4", last_name: "test_last4", email: "test4@gmail.com", birthdate: "2022-07-06 00:00:00", gender: "male", password: "123456", password_confirmation: "123456")
User.create!(first_name: "test_first5", last_name: "test_last5", email: "test5@gmail.com", birthdate: "2022-07-06 00:00:00", gender: "male", password: "123456", password_confirmation: "123456")

Post.create!(title: "test1", body: "content1", user_id: 1)
Post.create!(title: "test2", body: "content2", user_id: 2)
Post.create!(title: "test3", body: "content3", user_id: 3)
Post.create!(title: "test4", body: "content4", user_id: 4)
Post.create!(title: "test5", body: "content5", user_id: 5)

Comment.create!(post_id: 1, body: "Commented")
Comment.create!(post_id: 2, body: "Commented")
Comment.create!(post_id: 3, body: "Commented")
Comment.create!(post_id: 4, body: "Commented")
Comment.create!(post_id: 5, body: "Commented")

Like.create!(user_id: 5, post_id: 1)
Like.create!(user_id: 4, post_id: 2)
Like.create!(user_id: 3, post_id: 3)
Like.create!(user_id: 2, post_id: 4)
Like.create!(user_id: 1, post_id: 5)
