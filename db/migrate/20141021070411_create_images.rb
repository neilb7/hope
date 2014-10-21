class CreateImages < ActiveRecord::Migration
  def self.up
    add_column :posts, :image, :attachment 
  end

  def self.down
  	remove_column :posts, :image
  end
end
