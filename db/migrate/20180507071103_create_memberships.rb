class CreateMemberships < ActiveRecord::Migration[5.1]
  def change
    create_table :memberships do |t|
      t.date :expiry
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
