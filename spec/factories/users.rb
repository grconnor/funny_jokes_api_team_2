FactoryBot.define do
  factory :user do
    email { "email@email.com" }
    password { "MyString" }
    password_confirmation { "MyString" }
  end
end
