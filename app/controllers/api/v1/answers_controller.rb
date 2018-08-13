class Api::V1::AnswersController < Api::V1::BaseController
  def index
    @answers = Answer.all
    render(json: @answers)
  end
end
