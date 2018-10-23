FactoryBot.define do
  factory :question do
    title { "What is Array?" }
    subtitle { "DataStructure" }
    order { 1 }
    active { true }
    assessment_id { 1 }

    factory :question_with_answers do
      after :build do |question|
        question.answers << FactoryBot.build(:answer, title: 'blue', :question => question, correct: true)
        %w[red white green].each do |color|
          question.answers << FactoryBot.build(:answer, title: color, :question => question, correct: false)
        end
      end
    end
  end
end
