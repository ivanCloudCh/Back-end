class CreateAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
      t.string :street
      t.string :external_number
      t.string :internal_number
      t.string :avenue
      t.string :zip_code
      t.string :city
      t.string :locality
      t.string :crossing
      t.references :state, foreign_key: true, index: true
      t.references :addressable, polymorphic: true

      t.timestamps
    end
  end
end
