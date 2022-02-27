class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :name, presence: true, length: { maximum: 20 }
  validates :address, presence: true, length: { maximum: 50 }
  validates :age, presence: true, length: {is: 8, message:"8桁の整数を入力してください"}
end
