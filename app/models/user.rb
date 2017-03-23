class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

         validates :fullname, presence: true, length: {maximum: 50}

         #it means fullname must be presence and shouldnt more than 50 characters

end
