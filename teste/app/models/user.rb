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

    has_secure_password
    validates :email, presence: true, length: {maximum: 50}, uniqueness: {case_sensitive: false}
    validates :password_digest, confirmation: true, presence: true, length: {minimum: 4}
    validates :password_confirmation, presence: true 
    before_save { self.email = email.downcase }

end
