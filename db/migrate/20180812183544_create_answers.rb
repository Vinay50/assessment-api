# frozen_string_literal: true

class CreateAnswers < ActiveRecord::Migration[5.0]
  def change
    create_table :answers do |t|
      t.string :title
      t.integer :order
      t.boolean :active
      t.boolean :correct
      t.timestamps
    end
  end
end
