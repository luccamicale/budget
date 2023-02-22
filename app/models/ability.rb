class Ability
  include CanCan::Ability

  def initialize(user)
    if user.admin?
      can :manage, :all
    else
      cannot :read, Category, hidden: true
      cannot :read, Payment, hidden: true
    end
  end
end
