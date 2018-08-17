# frozen_string_literal: true

class Admin::DashboardController < ApplicationController
  def index
    @assessments = Assessment.all
    render(json: @assessments)
  end
end
