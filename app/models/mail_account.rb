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

class MailAccount < ActiveRecord::Base
  validates :email, presence: true
  validates :email, uniqueness: { case_sensitive: false }
  
  
  belongs_to :user
  has_many :messages
  has_many :carts, :through => :messages
  
end
