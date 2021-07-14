class TypeUser < ApplicationRecord
  has_one :user
  ADMINISTRATOR = 1
  OPERATIVE = 2
  CLIENT = 3
end
