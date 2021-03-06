class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable

  with_options presence: true do
    validates :nickname, length: { minimum: 1, maximum: 20 }
    validates :profession, length: { minimum: 1, maximum: 15 }
    validates :feature1,  length: { minimum: 1, maximum: 15 }
    validates :feature2,  length: { minimum: 1, maximum: 15 }
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i.freeze
    validates :email, :email, { format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false } }
    validates :password, format: { with: /([0-9].*[a-zA-Z]|[a-zA-Z].*[0-9])/ }
    validates :last_name, format: { with: /\A[ぁ-んァ-ン一-龥]/ }
    validates :first_name, format: { with: /\A[ぁ-んァ-ン一-龥]/ }
    validates :last_name_reading, format: { with: /\A[ァ-ヶー－]+\z/ }
    validates :first_name_reading, format: { with: /\A[ァ-ヶー－]+\z/ }
    validates :birthday
  end

  has_many :space_users
  has_many :spaces, through: :space_users
end
