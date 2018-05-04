class RemoveProfileFromPosts < ActiveRecord::Migration[5.1]
  def change
    remove_reference :posts, :profile, foreign_key: true
  end
end
