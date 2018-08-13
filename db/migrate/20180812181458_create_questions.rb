class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.string :title
      t.string :subtitle
      t.integer :order
      t.boolean :active
      t.integer :assessment_id
      t.timestamps
    end
  end
end
