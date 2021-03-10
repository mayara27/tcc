# frozen_string_literal: true

class GuidesController < ApplicationController
  before_action :must_be_guide, except: %i[index]
  def index
    @guides = Guide.all
  end

  def new
    @guide = Guide.new
  end

  def create
    @guide = Guide.new(guide_params)
    @guide.user = current_user
    if @guide.save
      render :index
    else
      render :new
    end
  end

  private

  def guide_params
    params
      .require(:guide)
      .permit(:name, :cpf, :cadastur, :city, :state,
              :especialties, :modalities,
              :email_contact, :telefone_contact)
  end

  def must_be_guide
    redirect_to root_path if current_user.role != 'guide'
  end
end
