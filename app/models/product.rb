class Product < ActiveRecord::Base
  belongs_to :category
  has_many :comments, :dependent => :destroy

  validates :category, :name, :pricing, :description, :presence => true

  attr_accessible :description, :name, :pricing, :category_id


end
