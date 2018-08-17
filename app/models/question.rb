# frozen_string_literal: true

class Question < ApplicationRecord
  belongs_to :assessment
  has_many :answers, inverse_of: :question
  accepts_nested_attributes_for :answers, reject_if: :all_blank, allow_destroy: true
end
