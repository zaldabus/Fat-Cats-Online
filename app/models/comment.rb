class Comment < ActiveRecord::Base
	attr_accessible :post_id, :content
end