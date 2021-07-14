class CrateUserPermissions < ActiveRecord::Migration[5.1]
  def change
    create_table :permissions_users, id: false do |t|
      t.references :user, index: true, foreign_key: true
      t.references :permission, index: true, foreign_key: true
      t.timestamps
    end
  end
end
