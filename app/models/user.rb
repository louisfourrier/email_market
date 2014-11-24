# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  first_name             :string(255)
#  last_name              :string(255)
#  email                  :string(255)      default(""), not null
#  encrypted_password     :string(255)      default(""), not null
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string(255)
#  last_sign_in_ip        :string(255)
#  confirmation_token     :string(255)
#  confirmed_at           :datetime
#  confirmation_sent_at   :datetime
#  unconfirmed_email      :string(255)
#  created_at             :datetime
#  updated_at             :datetime
#

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  validates :first_name, presence: true
  validates :last_name, presence: true
  
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable, :confirmable
  
  after_save :create_first_email_account
  
  has_many :mail_accounts, dependent: :destroy
  has_many :messages, :through => :mail_accounts
  
  def full_name
    return self.first_name + " " + self.last_name
  end
  
  ## CALLBACKS
  
  def create_first_email_account
    if !self.confirmed_at.nil?
      if self.mail_accounts.where("mail_accounts.email = ?", self.email).empty?
        mail = MailAccount.new(:email => self.email, :email_verified  => true)
        self.mail_accounts << mail
      end
    end
  end
  
  
  
  
end
