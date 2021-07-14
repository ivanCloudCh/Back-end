class CreateLicenses < ActiveRecord::Migration[6.1]
  def change
    create_table :licenses do |t|
      t.string :nombre
      t.string :tipo
      t.string :locaciones
      t.string :recursos
      t.string :estaditicas
      t.string :acciones
      t.timestamps
    end
  end
end
