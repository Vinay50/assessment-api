# frozen_string_literal: true

class CreateResults < ActiveRecord::Migration[5.0]
  def change
    create_table :results do |t|
      t.integer :no_correct
      t.integer :no_incorrect
      t.integer :question_id
      t.integer :anwser_id
      t.timestamps
    end
  end
end
