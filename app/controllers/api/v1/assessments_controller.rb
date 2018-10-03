# frozen_string_literal: true

class Api::V1::AssessmentsController < Api::V1::BaseController
  #before_action :find_assessment

  def index
    @assessments = Assessment.all
    render(json: @assessments)
  end

  def show
    @assessment = Assessment.find(params[:id])
    @questions = @assessment.questions
    @answers = @questions.map(&:answers)
    render json: { assessment: @assessment, questions: @questions, answers: @answers }
  end

  private

  def find_assessment
    @assessment = Assessment.find(params[:id])
  end
end
