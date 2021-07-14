class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :email
      t.text :password
      t.text :password_digest
      t.string :name
      t.string :last_name
      t.string :last_mother_name
      t.string :phone
      t.boolean :deleted, default: false
      t.references :type_user, foreign_key: true, index: true

      t.timestamps
    end
  end
end
