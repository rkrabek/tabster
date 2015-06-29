class User < ActiveRecord::Base
    has_many :debts, dependent: :destroy
end
