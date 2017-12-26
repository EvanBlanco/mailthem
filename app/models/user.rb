class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
    
    #validaciones y errores
    validates :password, length: { minimum: 8 }
    validates :email, presence: true, uniqueness: true
    validates :password, presence: true
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable
    has_many :emails
end
