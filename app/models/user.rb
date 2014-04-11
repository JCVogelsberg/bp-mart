class User < ActiveRecord::Base

  # validates_presence_of :name
  # validates_presence_of :email
  has_secure_password
  validates_confirmation_of :password
  # validates_uniqueness_of :email


# def self.authenticate(email, password)
#     user = find_by_email(email)
#     return user if user && user.authenticate(password)
#   end

end
