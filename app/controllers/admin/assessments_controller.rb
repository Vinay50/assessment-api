# frozen_string_literal: true

module Admin
  # class has methods to create/update/detelete the assessment
  class AssessmentsController < ApplicationController
    def index
      @assessments = Assessment.all
      render(json: @assessments)
    end

    def new
      @assessment = Assessment.new
      @q = @assessment.questions.build
      @q.answers.build
    end

    def create
      @assessment = Assessment.new(assessment_params)
      if @assessment.save!
        flash[:notice] = "Assessment Successfully created"
      else
        flash[:error] = "Could not create Assessment.Please try after some time"
      end
    end

    def edit; end

    def update; end

    def delete; end

    private

    def assessment_params
       params.require(:assessment).permit( :name,
      { questions_attributes: [:id, :title, :_destroy,
      { answers_attributes: [:id, :title, :_destroy] }] })
    end
  end
end
