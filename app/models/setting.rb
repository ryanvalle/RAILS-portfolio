# == Schema Information
#
# Table name: settings
#
#  id              :integer         not null, primary key
#  sitetitle       :string(255)
#  sitedescription :string(255)
#  siteemail       :string(255)
#  siteowner       :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#

class Setting < ActiveRecord::Base
end
