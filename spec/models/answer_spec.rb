# RSpec.describe Answer, type: :model do
#   let (:assessment) { create(:assessment)}
#   let(:question) { create(:question, assessment_id: assessment.id) }
#   let(:answer) { create(:answer, question_id: question.id) }

#   it "is not valid without question" do
#     answer.question = nil
#     expect(answer).not_to be_valid
#   end

#   # it "is valid with question" do
#   #   expect(answer).not_to be_valid
#   # end
# end