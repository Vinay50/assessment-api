# frozen_string_literal: true

class AddColumnToAnswer < ActiveRecord::Migration[5.0]
  def change
    add_column :answers, :weight, :integer
  end
end
