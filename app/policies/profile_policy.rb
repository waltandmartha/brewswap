class ProfilePolicy < ApplicationPolicy

    def create?
      user == record.user
    end
  
    def update?
      create?
    end
  end