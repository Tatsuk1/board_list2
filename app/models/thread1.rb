class Thread1 < ApplicationRecord
	belongs_to :user
	has_many :comments, dependent: :destroy
	has_many :replies, class_name: "Comment", foreign_key: :reply_comment, dependent: :destroy
	validates :name, presence: true, length: { maximum: 30 }
	validates :description, length: {maximum: 140 }
	validate :validate_name_not_including_comma
	scope :recent, -> { order(created_at: :desc)}

	private
		def validate_name_not_including_comma
			errors.add(:name,'にカンマを含める事はできません') if name&.include?(',')
		end
end
