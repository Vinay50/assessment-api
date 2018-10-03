class AssessmentSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :active, :admin_id
  has_many :questions
end
