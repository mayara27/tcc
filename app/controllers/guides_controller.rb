class GuidesController < ApplicationController
    before_action :must_be_guide, except: %i[index]
    def index
        @guides = Guide.all
    end

    private
    def must_be_guide
        redirect_to root_path if current_user.role != 'guide'
      end
  end
  