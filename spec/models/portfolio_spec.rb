# == Schema Information
#
# Table name: portfolios
#
#  id          :integer         not null, primary key
#  title       :string(255)
#  description :text
#  mediatype   :string(255)
#  location    :string(255)
#  publish     :boolean
#  created_at  :datetime
#  updated_at  :datetime
#  link        :string(255)
#  vanity_url  :string(255)
#

require 'spec_helper'

describe Portfolio do
  pending "add some examples to (or delete) #{__FILE__}"
end
