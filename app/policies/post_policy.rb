class PostPolicy < ApplicationPolicy

  def index?
    true
  end  
  
  def create?
    user.present?
  end

  def update?
    true if user.present? && user == record.user 
  end
  
  # def create?
  #     user == record.user
  # end
  
  # def update?
  #   create?
  # end
end