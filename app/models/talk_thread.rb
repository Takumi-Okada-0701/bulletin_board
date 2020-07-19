class TalkThread < ApplicationRecord
    belongs_to :user
    has_many :responses
    has_many :talk_thread_category
    has_many :categories, through: :talk_thread_category
    accepts_nested_attributes_for :talk_thread_category, allow_destroy: true

    validates :title,
        presence: true
end
