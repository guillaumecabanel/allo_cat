class Pet < ApplicationRecord
	validates :name, presence: true
	validates :specy, inclusion: { in: %w(cat dog bird bear horse),
    message: "%{value} is not in the R.S.P.C.A list" }
end
