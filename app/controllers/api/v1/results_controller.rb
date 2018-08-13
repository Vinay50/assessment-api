class Api::V1::ResultsController < Api::V1::BaseController
  def index
    @results = Result.all
    render(json: @results)
  end
end
