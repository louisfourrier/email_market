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

require 'test_helper'

class CartTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
