class AddAttachmentImageToBlogPosts < ActiveRecord::Migration[4.2]
  include Paperclip::Schema
  def self.up
    add_attachment :blog_posts, :image
  end

  def self.down
    remove_attachment :blog_posts, :image
  end
end
