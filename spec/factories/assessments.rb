FactoryBot.define do
  factory :assessment do
    active { true }
    name { Faker::Name.name }
    admin_id { 1 }
    assessment_type { nil }
    description { "This is about Factory Knowledge" }

    factory :assessment_with_questions_and_answers do
      after :build do |assessment|
        assessment.questions << FactoryBot.create_list(:question_with_answers, 4, assessment: assessment)
      end
    end
  end
end