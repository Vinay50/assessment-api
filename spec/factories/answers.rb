FactoryBot.define do
  factory :answer do
    title { "Blue" }
    order { 1 }
    active { true }
    correct { true }
    weight { 1 }
    question_id { 1 }
  end
end
