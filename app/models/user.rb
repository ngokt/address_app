class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable
  validates :name, presence: true, length: { maximum: 20 }, on: :registration
  validates :address, presence: true, length: { maximum: 50 }, on: :registration
  validates :age, presence: true, length: {is: 8, message:"8桁の整数を入力してください"}, on: :registration
end
