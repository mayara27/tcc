class Ability
  include CanCan::Ability
  def initialize(user)
    if user.role == 'guide'
      can [:read, :update, :destroy, :create], Passeio
      # can :manage, :all
    else
      can [:read], Passeio
    end
  end
end