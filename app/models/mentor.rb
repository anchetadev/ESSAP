class Mentor < ApplicationRecord
  has_many :users
  has_many :feedbacks
  has_secure_password
end
