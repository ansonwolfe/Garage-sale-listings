class Comment < ActiveRecord::Base
  belongs_to :product
  belongs_to :user
  
  attr_accessible :author, :content, :product_id
end
