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

class Message < ActiveRecord::Base
  validates :html_content, presence: true
  validates :html_content, uniqueness: true
  
  belongs_to :mail_account
  has_one :cart, dependent: :destroy
  
end
