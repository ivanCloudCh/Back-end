class Course < ApplicationRecord
  has_and_belongs_to_many :employees, optional: true
end
