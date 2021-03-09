# frozen_string_literal: true

class AddUserToGuides < ActiveRecord::Migration[6.1]
  def change
    add_reference :guides, :user, null: false, foreign_key: true
  end
end
