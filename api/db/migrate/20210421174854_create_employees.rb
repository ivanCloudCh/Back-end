class CreateEmployees < ActiveRecord::Migration[6.1]
  def change
    create_table :employees do |t|
      t.string :no_empleado
      t.string :nombre
      t.string :correo
      t.string :departamento
      t.string :categoria
      t.string :curso
      t.string :porcentaje_de_curso_completado
      t.string :porcentaje_de_cumplimiento_en_capacitacion
      t.string :acciones
      t.timestamps
    end
  end
end
