class CreateAreaWorks < ActiveRecord::Migration[6.1]
  def change
    create_table :area_works do |t|
      t.string :area
      t.timestamps
    end
  end
end
