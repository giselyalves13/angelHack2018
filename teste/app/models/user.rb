class User < ApplicationRecord
	has_many :linguas, dependent: :destroy
	has_many :habilidades, dependent: :destroy
end
