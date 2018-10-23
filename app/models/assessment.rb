# frozen_string_literal: true
class Assessment < ApplicationRecord

  has_many :questions, inverse_of: :assessment, dependent: :destroy

  accepts_nested_attributes_for :questions, reject_if: :all_blank, allow_destroy: true

  validates_presence_of :name
  validates_presence_of :description

  validate :questions do
    errors.add(:questions, "Assessment should have at least
      one question") if self.questions.length <= 0
  end
end
