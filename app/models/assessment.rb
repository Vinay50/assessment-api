# frozen_string_literal: true
class Assessment < ApplicationRecord
  has_many :questions, inverse_of: :assessment
  accepts_nested_attributes_for :questions, reject_if: :all_blank, allow_destroy: true
  validates :name, presence: true
  # validates :questions do
  #   #errors.add(:questions, "assessment should have atleast one question") if self.questions.length <= 0
  #   errors.add(:questions, "should have at least one question") if self.questions.length <= 0
  # end
end
