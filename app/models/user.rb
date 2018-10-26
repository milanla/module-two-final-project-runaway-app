class User < ApplicationRecord
  has_many :likes
  has_many :destinations, through: :likes

  validates :first_name, presence: true, length: (2..20)
  validates :last_name, presence: true, length: (2..20)
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, uniqueness: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX }
  validates :password, presence: true, length: (6..20)
  has_secure_password

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def authenticate(plain_text)
    BCrypt::Password.new(self.password_digest) == plain_text
  end

end
