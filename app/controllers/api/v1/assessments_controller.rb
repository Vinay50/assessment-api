class Api::V1::AssessmentsController < Api::V1::BaseController
  def index
    @assessments = Assessment.all
    render(json: @assessments)
  end
end
