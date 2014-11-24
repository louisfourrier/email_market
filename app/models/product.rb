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

class Product < ActiveRecord::Base
  has_many :references, dependent: :destroy
end
