class AddAuthorToPosts < ActiveRecord::Migration
  def self.up
   	add_column :posts, :author_id, :integer
  end

  def self.down
  	remove_colum :posts, :author_id 
  end
end
