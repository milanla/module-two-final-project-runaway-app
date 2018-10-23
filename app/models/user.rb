class User < ApplicationRecord
  has_many :likes
  has_many :destinations, through: :likes

  validates :first_name, presence: true, length: { minimum: 2 }
  validates :last_name, presence: true, length: { minimum: 2 }
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, length: { minimum: 6 }
  has_secure_password

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

end
