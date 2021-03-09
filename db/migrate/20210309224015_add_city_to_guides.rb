# frozen_string_literal: true

class AddCityToGuides < ActiveRecord::Migration[6.1]
  def change
    add_column :guides, :city, :string
  end
end
