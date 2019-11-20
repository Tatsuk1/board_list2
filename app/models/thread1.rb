class Thread1 < ApplicationRecord
	has_many :comments
	validates :name, presence: true, length: { maximum: 30 }
	validates :description, length: {maximum: 140 }
	validate :validate_name_not_including_comma

	private
		def validate_name_not_including_comma
			errors.add(:name,'にカンマを含める事はできません') if name&.include?(',')
		end
end
