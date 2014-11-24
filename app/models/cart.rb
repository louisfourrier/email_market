# == Schema Information
#
# Table name: carts
#
#  id             :integer          not null, primary key
#  message_id     :integer
#  total_price    :float
#  delivery_date  :datetime
#  products_count :string(255)
#  currency       :string(255)
#  treated        :boolean
#  treated_date   :datetime
#  created_at     :datetime
#  updated_at     :datetime
#
class Cart < ActiveRecord::Base
  validates :message_id, uniqueness: true

  belongs_to :message
  has_many :references, dependent: :destroy
end
