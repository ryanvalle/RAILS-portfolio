# == Schema Information
#
# Table name: contacts
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  email      :string(255)
#  message    :text
#  created_at :datetime
#  updated_at :datetime
#

class Contact < ActiveRecord::Base
	attr_accessible :name, :email, :message

	validates :name, presence: true
	validates :email, presence: true
	validates :message, presence: true
end
