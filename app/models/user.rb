class User < ApplicationRecord
  belongs_to :mentor
  has_secure_password
end
