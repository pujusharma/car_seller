class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :email, format: { with: /\A[a-z0-9]+\z/, message: "Email invalid"  },
         length: { minimum: 4, maximum: 254 },uniqueness: { case_sensitive: false }
end
  