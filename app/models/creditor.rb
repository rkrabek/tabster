class Creditor < ActiveRecord::Base
    has_and_belongs_to_many :debtors
end
