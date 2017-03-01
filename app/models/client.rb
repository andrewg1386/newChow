class Client < ActiveRecord::Base
  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
  validates :email, presence: true, uniqueness: { case_sensitive: false }, format: { with: EMAIL_REGEX }
  validates :name, presence: true
  has_secure_password
  def self.search(search)
    where("name ILIKE ?","%#{search}%")
  end
end
