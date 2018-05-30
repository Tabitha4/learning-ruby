FactoryBot.define do
  sequence(:email) { |n| "user#{n}@example.com" }

  factory :admin, class: User do
    email
    password "0987654321"
    admin true
    first_name "Admin"
    last_name "User"
  end

  factory :user do
    email
    password "1234567890"
    first_name "Kevin"
    last_name "Example"
    admin false
  end

end
