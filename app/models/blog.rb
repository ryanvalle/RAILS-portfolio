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
#  category   :string(255)
#

class Blog < ActiveRecord::Base
	attr_accessible :title, :body, :publish, :user_id, :category
	belongs_to :user

	validates :title, presence: true
	validates :body, presence: true
	validates :category, presence: true
end
