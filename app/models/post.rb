class Post < ActiveRecord::Base
	belongs_to :user,class_name: 'User'
	validates_presence_of :title,:d_type,:body,:author
end
