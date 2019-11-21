class Comment < ApplicationRecord
  belongs_to :thread1
  belongs_to :user
  validates :content, presence: true, length: { maximum: 60 }
end
