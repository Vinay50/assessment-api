# frozen_string_literal: true

class Question < ApplicationRecord
  belongs_to :assessment
  has_many :answers, inverse_of: :question, dependent: :destroy
  accepts_nested_attributes_for :answers, reject_if: :all_blank, allow_destroy: true

  validates :title, presence: true

  validate :answers do
    # errors.add(:answers, "should have at least two answers defined") if self.answers.length < 2
    # errors.add(:answers, "") if answers.where(correct: true).length == 1
    # errors.add(:answers, "should have a correct answer") if answers.reject {|answer| !answer.correct? }.size < 1
  end
end
