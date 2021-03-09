# frozen_string_literal: true

class GuidesController < ApplicationController
  before_action :must_be_guide, except: %i[index]
  def index
    @guides = Guide.all
  end

  def new; end

  private

  def must_be_guide
    redirect_to root_path if current_user.role != 'guide'
  end
end
