# frozen_string_literal: true

class CreateGuides < ActiveRecord::Migration[6.1]
  def change
    create_table :guides do |t|
      t.string :name
      t.string :cpf
      t.string :cadastur
      t.string :especialties
      t.string :modalities
      t.string :email_contact
      t.string :telefone_contact
      t.timestamps
    end
  end
end
