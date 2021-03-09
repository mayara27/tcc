# frozen_string_literal: true

class AddStateToGuides < ActiveRecord::Migration[6.1]
  def change
    add_column :guides, :state, :string
  end
end
