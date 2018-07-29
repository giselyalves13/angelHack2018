class FilaMentorando < ApplicationRecord
	has_many :desponibilidade_mentorando, dependent: :destroy
end
