# frozen_string_literal: true

class Api::V1::QuestionsController < Api::V1::BaseController
  def index
    @questions = Question.where(assessment_id: params[:assessment_id])
    #@answers = @questions.map(&:answers)
    # render json: { questions: @questions.to_json, answers: @answers.to_json }
    render(json: @questions)
  end

  def show
    @assessment_questions = Question.where(assessment_id: params[:assessment_id])
    @assessment_question  = @assessment_questions[params[:id].to_i - 1]
    @answers = @assessment_question.answers
    render json: { question: @assessment_question }
  end

  private

  # def item_params
  #   params.permit(:name, :done)
  # end
end
