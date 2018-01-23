class Article < ApplicationRecord
   mount_uploader :featureimage, FeatureimageUploader
		has_many :comments
	   belongs_to :category
		has_many :taggings
	has_many :tags, through: :taggings



		def tag_list=(tags_string)
def tag_list=(tags_string)
  tag_names = tags_string.split(",").collect{|s| s.strip.downcase}.uniq
  new_or_found_tags = tag_names.collect { |name| Tag.find_or_create_by(name: name) }
  self.tags = new_or_found_tags
end

end
def tag_list
   self.tags.collect do |tag|
    tag.name
  end.join(", ")
end
end
