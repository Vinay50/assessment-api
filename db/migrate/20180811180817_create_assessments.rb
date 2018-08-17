# frozen_string_literal: true

class CreateAssessments < ActiveRecord::Migration[5.0]
  def change
    create_table :assessments do |t|
      t.string :name
      t.boolean :active
      t.integer :admin_id
      t.string  :assessment_type
      t.timestamps
    end
  end
end
