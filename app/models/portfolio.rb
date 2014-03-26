# == Schema Information
#
# Table name: portfolios
#
#  id          :integer         not null, primary key
#  title       :string(255)
#  description :string(255)
#  mediatype   :string(255)
#  location    :string(255)
#  publish     :boolean
#  created_at  :datetime
#  updated_at  :datetime
#

class Portfolio < ActiveRecord::Base
	attr_accessible :title, :description, :mediatype, :location, :publish, :updated_at

	validates :title, presence: true
	validates :description, presence: true
	validates :mediatype, presence: true
	validates :location, presence: true


end
