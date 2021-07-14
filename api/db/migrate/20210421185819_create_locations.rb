class CreateLocations < ActiveRecord::Migration[6.1]
  def change
    create_table :locations do |t|
      t.string :instalacion
      t.string :dptos
      t.string :no_de_empleados
      t.string :postal
      t.timestamps
    end
  end
end
