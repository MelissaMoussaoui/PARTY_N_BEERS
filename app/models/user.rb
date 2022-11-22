class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # validates :first_name, presence: true
  # validates :last_name, presence: true
  # validates :gender, inclusion: {in: %w(F M IEL),
  #   message: "%{value} is not a valid gender"}
  # validates :phone_number, presence: true #format:
  # validates :date_of_birth, presence: true
end
