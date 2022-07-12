FactoryBot.define do
  factory :user1, class: User do
    first_name { 'Thado' }
    last_name { 'Maloma' }
    email { 'maloma@example.com' }
    birthdate { '2022-07-06 00:00:00' }
    gender { 'male' }
    password { '123456' }
    password_confirmation { '123456' }
    admin { false }
  end

  factory :user2, class: User do
    first_name { 'Singson' }
    last_name { 'Mandy' }
    email { 'mandy@example.com' }
    birthdate { '2014-07-07 00:00:00' }
    gender { 'female' }
    password { '123456' }
    password_confirmation { '123456' }
    admin { false }
  end

  factory :admin_user, class: User do
    first_name { 'Guest' }
    last_name { 'Admin' }
    email { 'admin_guest@example.com' }
    birthdate { '2014-07-07 00:00:00' }
    gender { 'male' }
    password { '123456' }
    password_confirmation { '123456' }
    admin { true }
  end
end
