# == Schema Information
#
# Table name: mail_accounts
#
#  id               :integer          not null, primary key
#  user_id          :integer
#  email_verified   :boolean
#  verify_token     :string(255)
#  verify_sent_date :datetime
#  created_at       :datetime
#  updated_at       :datetime
#  email            :string(255)
#

require 'test_helper'

class MailAccountTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
