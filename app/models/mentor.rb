class Mentor < ApplicationRecord
  has_many :users
  has_secure_password
end
