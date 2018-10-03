class AnswerSerializer < ActiveModel::Serializer
  attributes :id, :title, :order, :active, :correct, :weight
  has_one :question
end
