class User < ApplicationRecord
	has_many :linguas, dependent: :destroy
	has_many :habilidades, dependent: :destroy

	has_and_belongs_to_many(:mentor,
    :class_name => "User",
    :join_table => "user_mentor",
    :foreign_key => "user_id",
    :association_foreign_key => "user_mentor_id")

  	has_and_belongs_to_many(:mentorado,
    :class_name => "User",
    :join_table => "user_mentor",
    :foreign_key => "user_mento_id",
    :association_foreign_key => "user_id")
end
