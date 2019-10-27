class User < ApplicationRecord
  belongs_to :mentor
  has_many :feedbacks
  has_secure_password
end
