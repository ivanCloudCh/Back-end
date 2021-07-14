class State < ApplicationRecord
  belongs_to :country
  has_one :address
end
