class Employee < ActiveRecord::Base
  before_save { self.username = username.downcase }
  validates :username,  presence: true, length: { maximum: 50 }
has_secure_password
end
