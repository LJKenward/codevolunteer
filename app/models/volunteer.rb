class Volunteer < ActiveRecord::Base
  has_secure_password
  has_many :proposals
end
