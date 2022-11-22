class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

<<<<<<< HEAD
  # validates :first_name, presence: true
  # validates :last_name, presence: true
  # validates :gender, inclusion: {in: %w(F M IEL),
  #   message: "%{value} is not a valid gender"}
  # validates :phone_number, presence: true #format:
  # validates :date_of_birth, presence: true
=======
#  validates :first_name, presence: true
 # validates :last_name, presence: true
  #validates :gender, inclusion: {in: %w(F M IEL),
   # message: "%{value} is not a valid gender"}
 # validates :phone_number, presence: true #format: { with: /^(?:(?:(?:\+|00)33[ ]?(?:\(0\)[ ]?)?)|0){1}[1-9]{1}([ .-]?)(?:\d{2}\1?){3}\d{2}$/ }
  #validates :date_of_birth, presence: true 
>>>>>>> a162a2fd40c8f710f7fea09b9d7a28e65964b94c
end
