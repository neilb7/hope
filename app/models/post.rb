class Post < ActiveRecord::Base


	belongs_to :author

	has_attached_file :image, :styles => { :medium => "500x500>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
 	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
	
	has_many :comments, dependent: :destroy
	validates :title, presence: true, length: {minimum: 5}
	validates :body, presence: true 

	acts_as_taggable # Alias for acts_as_taggable_on :tags
 	acts_as_taggable_on 
end
