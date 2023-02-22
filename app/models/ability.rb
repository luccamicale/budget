# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    if user.admin?
      can :manage, :all
    else
      can :manage, Category, user_id: user.id
      can :manage, Payment, user_id: user.id
      can :read, :all
    end
  end
end
