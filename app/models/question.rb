class Question < ApplicationRecord
  belongs_to :assesstment
  has_many :answers
end
