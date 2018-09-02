class AddDescriptionToAssessment < ActiveRecord::Migration[5.0]
  def change
    add_column :assessments, :descripton, :text
  end
end
