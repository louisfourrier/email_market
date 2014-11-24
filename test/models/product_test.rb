# == Schema Information
#
# Table name: products
#
#  id             :integer          not null, primary key
#  name           :text
#  description    :text
#  slug           :text
#  amazon_url     :text
#  product_detail :text
#  url_from_site  :text
#  html_content   :text
#  html_url       :text
#  image_url      :text
#  created_at     :datetime
#  updated_at     :datetime
#

require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
