class CreateCourses < ActiveRecord::Migration[6.1]
  def change
    create_table :courses do |t|
      t.string :nombre
      t.string :posicion_de_trabajo
      t.string :curso
      t.string :fecha_inicio
      t.string :fecha_fin
      t.string :porcentaje_de_personas_con_curso_vigente
      t.timestamps
    end
  end
end
