# frozen_string_literal: true

class Ability
  include CanCan::Ability
  def initialize(user)
    if user.role == 'guide'
      can %i[read update], Guide
      # can :manage, :all
    else
      can [:read], Guide
    end
  end
end
