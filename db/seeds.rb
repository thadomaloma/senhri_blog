# User
User.create!(first_name: "Admin", last_name: "Admin", email: "admin@example.com", password: "password", birthdate: "1987-05-05 00:00:00", gender: "male")
10.times do |n|
  User.create!(first_name: "User#{n+1}", last_name: "User#{n+1}", email: "user#{n+1}@example.com", password: "password", birthdate: "1987-05-05 00:00:00", gender: "male")
end
