class Product < ActiveRecord::Base
  validates :name, presence: true
  validates :price, presence: true
  validates :description, presence: true
  has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100"}
  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/
end

