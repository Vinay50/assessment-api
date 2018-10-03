
class QuestionSerializer < ActiveModel::Serializer
  attributes :id, :title, :subtitle, :order, :active, :assessment_id
  has_many :answers
  has_one :assessment
end
