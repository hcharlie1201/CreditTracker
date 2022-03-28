class BankAccount < ApplicationRecord
    validate :bank
    belongs_to :user

end
