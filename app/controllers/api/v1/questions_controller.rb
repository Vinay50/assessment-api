# frozen_string_literal: true

class Api::V1::QuestionsController < Api::V1::BaseController
  def index
    @questions = Question.where(assessment_id: params[:assessment_id])
    render(json: @questions)
  end
end
