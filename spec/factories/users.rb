FactoryBot.define do
  factory :user do
    email { "joe@gmail.com" }
    password { "blahblah" }
    password_confirmation { "blahblah" }
  end
end
