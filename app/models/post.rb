 class Post < ActiveRecord::Base
	attr_accessible :url, :title

	validates :title, presence: true
	validates :url, presence: true

	has_many :comments
	has_many :votes

before_create :generate_slug

	def vote_number
		votes.where(direction: "up").count	- votes.where(direction: "down").count
	end

	def to_param
		 slug
	end

	def generate_slug
		self.slug = title.split(' ').join('_')
	end
end