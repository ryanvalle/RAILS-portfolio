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

require 'spec_helper'

describe Portfolio do
  pending "add some examples to (or delete) #{__FILE__}"
end
