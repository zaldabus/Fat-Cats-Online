class Comment < ActiveRecord::Base
	attr_accessible :post_id, :user_id, :content

	validates :content, presence: true

	belongs_to :posts

end