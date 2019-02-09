#MODEL KETIKA USER MELAKUKAN REGISTRASI

class Member < ApplicationRecord

  validates :firstname, presence: true
  validates :lastname, presence: true
  validates :email, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :password, presence: true

end
