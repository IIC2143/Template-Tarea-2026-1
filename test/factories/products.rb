FactoryBot.define do
  factory :product do
    association :brand
    sequence(:name) { |n| "Product #{n}" }
    description { "Default product description" }
    price { |n| 10 + n }
    available { true }

    trait :not_available do
      available { false }
    end
  end
end
