class Employee < ApplicationRecord
  has_and_belongs_to_many :courses, optional: true
  accepts_nested_attributes_for :courses
  has_and_belongs_to_many :user, optional: true
  accepts_nested_attributes_for :user
end
