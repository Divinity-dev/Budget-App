class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    can :manage, Category, user_id: user.id
    can :manage, Datum, author_id: user.id
    can :manage, CategoryDatum, recipe: { user_id: user.id }
  end
end
