class User < ApplicationRecord
  validates :name, presence: true, length: { maximum: 20 }, uniqueness: true
  validates :address, presence: true, length: { maximum: 50 }
end
