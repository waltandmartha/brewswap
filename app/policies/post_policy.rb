class PostPolicy < ApplicationPolicy

  def index?
    true
  end  
  
  def create?
      user == record.user
  end
  
  def update?
    create?
  end
end