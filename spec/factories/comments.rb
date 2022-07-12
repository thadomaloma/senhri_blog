FactoryBot.define do
  factory :comment do
    user { nil }
    post { nil }
    body { "test" }
  end
end
