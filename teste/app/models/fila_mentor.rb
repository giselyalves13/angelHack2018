class FilaMentor < ApplicationRecord
	has_many :disponibilidade_mentor, dependent: :destroy

end
