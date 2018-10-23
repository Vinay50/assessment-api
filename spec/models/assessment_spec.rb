# rubocop:disable all
RSpec.describe Assessment, type: :model do
  require 'spec_helper'

  #let(:assessment) { create(:assessment) }
  let(:assessment) { FactoryBot.create :assessment_with_questions_and_answers }
  let(:question1) { assessment.questions[0]}
  let(:question2) { assessment.questions[1]}
  # let(:question)  { create(:question, assessment_id: assessment.id) }
  # let(:answer)  { create(:answer, question_id: question.id) }

  context "validations" do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:description) }
  end

  context "associations" do
    it { is_expected.to have_many(:questions)}
  end

  context "valid assessments" do
    it "is valid questions" do
      assessment.questions << question1
      assessment.save!
      expect(assessment).to be_valid
    end

  end

  context "not valid" do
    it "is invalid without order" do
      assessment.name = nil
      expect(assessment).not_to be_valid
    end

    it "is invalid without description" do
      assessment.description = nil
      expect(assessment).not_to be_valid
    end

    it "is invalid without name" do
      assessment.name = nil
      expect(assessment).not_to be_valid
    end

    it "is invalid without question" do
      assessment.questions << []
      assessment.save!
      expect(assessment).not_to be_valid
    end
  end
end
