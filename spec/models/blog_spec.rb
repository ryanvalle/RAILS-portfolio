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

require 'spec_helper'

describe Blog do
  pending "add some examples to (or delete) #{__FILE__}"
end
