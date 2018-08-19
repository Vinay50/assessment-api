# frozen_string_literal: true

module Admin
  # class has methods to create/update/detelete the assessment
  class AssessmentsController < ApplicationController
    before_action :find_assessment, only: %i[edit update show destory]

    def index
      @assessments = Assessment.all
      render(json: @assessments)
    end

    def new
      @assessment = Assessment.new
      1.times do
        @question = @assessment.questions.build
        2.times { @question.answers.build }
      end
    end

    def create
      @assessment = Assessment.new(assessment_params)
      if @assessment.save!
        flash[:notice] = "Assessment Successfully created"
        redirect_to admin_assessment_path(@assessment)
      else
        flash[:error] = "Could not create Assessment.Please try after some time"
        redirect_to action: "new"
      end
    end

    def edit; end

    def update
      if @assessment.update(assessment_params)
        flash[:notice] = "Successfully updated."
        redirect_to admin_assessment_path(@assessment)
      else
        flash[:error] = "could not updated."
        redirect_to action: "new"
      end
    end

    def show; end

    def delete; end

    private

    def find_assessment
      @assessment = Assessment.find(params[:id])
    end

    def assessment_params
      params.require(:assessment).permit( :name,
      { questions_attributes: [:id, :title, :order, :active, :_destroy,
      { answers_attributes: [:id, :title, :correct, :order, :active, :_destroy] }] })
    end
  end
end
