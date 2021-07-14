class User < ApplicationRecord
  belongs_to :type_user
  has_and_belongs_to_many :permissions, optional: true

  accepts_nested_attributes_for :permissions

  has_secure_password
  validates :email, presence: true
  validates :password, presence: true, :on => :create
  validates :email, uniqueness: { case_sensitive: false }, :on => :create
  validates :email, format: {with: URI::MailTo::EMAIL_REGEXP}
  validates_confirmation_of :password, :on => :create
  validates_presence_of :password_confirmation, :on => :create

  #mount_uploader :image_profile, UserUploader
end
