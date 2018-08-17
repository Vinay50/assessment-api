# frozen_string_literal: true

class Api::V1::DashboardController < Api::V1::BaseController
  def index
    @assessments = Assessment.all
    render(json: @assessments)
  end
end
