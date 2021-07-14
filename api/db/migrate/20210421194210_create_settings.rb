class CreateSettings < ActiveRecord::Migration[6.1]
  def change
    create_table :settings do |t|
      t.string :nombre
      t.string :puesto
      t.string :e_mail
      t.string :contraseña
      t.timestamps
    end
  end
end
