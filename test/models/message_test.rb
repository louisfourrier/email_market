# == Schema Information
#
# Table name: messages
#
#  id                     :integer          not null, primary key
#  mail_account_id        :integer
#  html_content           :text
#  treated                :boolean
#  treated_date           :datetime
#  mail_commerce_platform :text
#  created_at             :datetime
#  updated_at             :datetime
#  subject                :text
#

require 'test_helper'

class MessageTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
