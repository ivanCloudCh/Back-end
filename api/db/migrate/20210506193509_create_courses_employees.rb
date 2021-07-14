class CreateCoursesEmployees < ActiveRecord::Migration[6.1]
  def change
    create_table :courses_employees do |t|
      t.references :employee, index: true, foreign_key: true
      t.references :course, index: true, foreign_key: true
      t.timestamps
    end
  end
end
