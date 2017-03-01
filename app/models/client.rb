class Client < ActiveRecord::Base
  has_secure_password
  def self.search(search)
    where("name ILIKE ?","%#{search}%") 
  end
end
