# == Schema Information
#
# Table name: raw_mails
#
#  id            :integer          not null, primary key
#  email_from    :text
#  email_body    :text
#  email_subject :text
#  created_at    :datetime
#  updated_at    :datetime
#

require 'test_helper'

class RawMailTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
