class CreateReports < ActiveRecord::Migration[6.1]
  def change
    create_table :reports do |t|
      t.string :donde
      t.string :quien
      t.string :cuando
      t.string :que_se_vio
      t.string :que_area
      t.string :que_empresa
      t.string :lugar_exacto
      t.string :que_vio
      t.string :que_accion
      t.string :que_tipo
      t.string :donde_impacta
      t.string :potencial
      t.string :que_tipo_de_peligro
      t.string :estatus
      t.timestamps
    end
  end
end
