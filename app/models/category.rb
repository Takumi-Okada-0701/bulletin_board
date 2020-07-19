class Category < ApplicationRecord
    has_many :talk_threads
    has_many :talk_thread_category
end
