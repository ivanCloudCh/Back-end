class ChangeColumnsCountriesAndCities < ActiveRecord::Migration[5.1]
  def change
    change_column :countries, :created_at, :datetime, null: true
    change_column :countries, :updated_at, :datetime, null: true
    change_column :states, :created_at, :datetime, null: true
    change_column :states, :updated_at, :datetime, null: true
    add_column :states, :iso, :string, null: true
  end
end
