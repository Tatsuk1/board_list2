class Comment < ApplicationRecord
  belongs_to :thread1
  validates :content, presence: true, length: { maximum: 60 }
end
