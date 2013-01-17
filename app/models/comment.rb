class Comment < ActiveRecord::Base
	attr_accessible :post_id, :user_id, :content

	validates :content, presence: true
	validates :user_id, presence: true

	belongs_to :user

end