class AdminAbility < Ability
  def initialize(user)
    super
    return unless user.admin? || user.moderator?

    can :manage, ActiveAdmin::Page

    if user.admin?
      can :manage, :all
    end

    if user.moderator?
      can :manage, Photo
    end
  end
end
