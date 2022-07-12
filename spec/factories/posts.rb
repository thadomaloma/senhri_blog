FactoryBot.define do

  factory :post do
    title { "test_title" }
    body { "test_body" }
  end

  factory :post2, class: Post do
    title { "test_title2" }
    body { "test_content2" }
  end
end
