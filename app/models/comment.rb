class Comment < ActiveRecord::Base
  belongs_to :product
  attr_accessible :author, :content, :product_id
end
