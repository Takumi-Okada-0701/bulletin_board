class Response < ApplicationRecord
  belongs_to :user
  belongs_to :talk_thread

  validates :content,
    presence: true
end
