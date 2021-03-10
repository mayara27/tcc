# frozen_string_literal: true

class Guide < ApplicationRecord
    belongs_to :user
    validates :name, :cpf, :cadastur,
    :especialties, :modalities, :city, :state,
    :email_contact, :telefone_contact, presence: true
end
