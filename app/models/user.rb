class User < ActiveRecord::Base
  has_many :articles
  has_secure_password
  before_save {self.email = self.email.downcase}
  validates :username, presence: true, uniqueness: true, length: {minimum: 5, maximum: 20}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 105 },
  uniqueness: { case_sensitive: false },
  format: { with: VALID_EMAIL_REGEX }
end
