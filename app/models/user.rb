class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :rememberable, :validatable
  
  has_many :talk_threads
  has_many :responses

  validates :name,
    presence: true,
    length: {maximum: 30}
end
