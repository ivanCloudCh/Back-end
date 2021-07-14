class CreateBusines < ActiveRecord::Migration[6.1]
  def change
    create_table :busines do |t|
      t.string :empresa
      t.string :licencia
      t.string :empleados_permitidos
      t.string :supervisores
      t.string :administradores
      t.string :porcentaje_cumplimiento_de_capacitacion
      t.string :acciones
      t.timestamps
    end
  end
end
