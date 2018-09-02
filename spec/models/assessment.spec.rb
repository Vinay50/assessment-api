# rubocop:disable RSpec/ExampleLength, RSpec/MultipleExpectations
require "rails_helper"

RSpec.describe Assessment, type: :model do
  let(:assessment) { Assessment.new(assessment: assessment) }

  describe "validations" do
    it { should have_many(:questions) }
    it { should validate_presence_of(:name) }
  end

  it "create assessment with atleast 2 questions(each question should have 2 options)" do
    user.add_role(:super_admin)
    block.publish!
    expect(block.processed_html).to eq("hello")
  end

  it "assessment is not valid without questions" do
    block.user = nil
    expect(block).not_to be_valid
  end

  it "assessment is not valid wihout questions's answers" do
    expect(block).not_to be_valid
  end
end
