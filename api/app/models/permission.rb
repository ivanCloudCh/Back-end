class Permission < ApplicationRecord
  has_and_belongs_to_many :users

  HOME = 1
end
