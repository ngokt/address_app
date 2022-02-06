class User < ApplicationRecord
  validates :name, presence: true, length: { maximum: 20 }
  validates :address, presence: true, length: { maximum: 50 }
  validates :age, presence: true, length: {is: 8, message:"8桁の整数を入力してください"}
end
