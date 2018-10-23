# rubocop:disable RSpec/ExampleLength, RSpec/MultipleExpectations
require "rails_helper"

RSpec.describe "all routes", type: :routing do
  let (:assessment) { create(:assessment) }
  let (:adminuser) { create(:admin_user) }

  it "renders assessment show after creating assessment successfully" do
    expect(get: "/#{admin/assessments/assessment.id}").to  route_to(
      controller: "assessments", action: "show"
    )
  end

  it "renders assessment edit after clicking on edit link" do
    expect(get: "/#{admin/assessments/assessment.id}").to  route_to(
      controller: "assessments", action: "show"
    )
  end
end