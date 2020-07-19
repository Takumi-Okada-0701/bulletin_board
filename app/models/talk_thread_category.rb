class TalkThreadCategory < ApplicationRecord
  belongs_to :talk_thread
  belongs_to :category
end
