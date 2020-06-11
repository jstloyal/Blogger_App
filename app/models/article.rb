class Article < ApplicationRecord
  has_many :comments
  has_many :taggings
  has_many :tags, through: :taggings

  def tag_list
  	self.tags.collect do |tag|
  		tag.name
  	end.join(", ")
  end

  def tag_list=(tags_string)
  	tags_string = ["tag1", "tag2", "tag3"]
  end
end
