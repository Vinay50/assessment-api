# frozen_string_literal: true
class Assessment < ApplicationRecord
  has_many :questions, inverse_of: :assessment
  accepts_nested_attributes_for :questions, reject_if: :all_blank, allow_destroy: true
end
