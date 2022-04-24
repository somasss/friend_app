class User < ApplicationRecord
  has_secure_password
  before_validation { email.downcase! }
  has_many :feeds
  validates :password, length: { minimum: 6 }
  validates :name,  presence: true, length: { maximum: 30 }
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }

end
