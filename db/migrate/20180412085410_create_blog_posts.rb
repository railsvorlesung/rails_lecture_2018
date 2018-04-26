class CreateBlogPosts < ActiveRecord::Migration[5.2]
  def change
    create_table :blog_posts do |t|
      t.string :title
      t.text :body
      t.boolean :public

      t.timestamps
    end

  end
end
