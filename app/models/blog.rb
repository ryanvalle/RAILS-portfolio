# == Schema Information
#
# Table name: blogs
#
#  id         :integer         not null, primary key
#  title      :string(255)
#  body       :text
#  publish    :boolean
#  user_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

class Blog < ActiveRecord::Base
	attr_accessible :title, :body, :publish, :user_id
	belongs_to :user

	validates :title, presence: true
	validates :body, presence: true
end
