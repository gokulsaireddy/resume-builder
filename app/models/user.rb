class User < ApplicationRecord

    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

    before_save { self.email = email.downcase }

    validates(:name, presence: true)
    validates(:email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false })
    # adds password fields
    has_secure_password
    validates(:password_digest, presence: true, length: { minimum: 8 }, if: -> { password.present? })
    validates :password_confirmation, presence: true, on: :create


    has_one :profile, dependent: :destroy
    has_one_attached :avatar
end
