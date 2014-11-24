# == Schema Information
#
# Table name: references
#
#  id               :integer          not null, primary key
#  product_id       :integer
#  cart_id          :integer
#  item_number      :integer
#  item_price       :float
#  total_price      :float
#  product_url      :text
#  condition        :text
#  date_of_order    :datetime
#  date_of_delivery :datetime
#  comment          :text
#  created_at       :datetime
#  updated_at       :datetime
#

class Reference < ActiveRecord::Base
  validates :product_id, :uniqueness => {:scope => :cart_id}
  
  belongs_to :product
  belongs_to :cart
end
