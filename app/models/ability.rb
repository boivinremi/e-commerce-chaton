# frozen_string_literal: true

class Ability
  include CanCan::Ability
  def initialize(user)
    user ||= User.new
    if user.present?
      if user.admin?
        can :manage, :all
      end
    end
  end
end
