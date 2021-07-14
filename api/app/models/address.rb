class Address < ApplicationRecord
  belongs_to :state
  has_one :country, through: :state
  belongs_to :addressable, polymorphic: true, optional: true
  validates_presence_of :street, :external_number, :zip_code, :state, presence: true
end
