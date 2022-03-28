class User < ApplicationRecord
    validate :firstname
    validate :lastname
    validate :email
    validate :dob
    validates :password, length: {minimum: 6}, on: :create
    has_secure_password

    has_many :bank_account

end
