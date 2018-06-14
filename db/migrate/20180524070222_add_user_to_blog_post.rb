class AddUserToBlogPost < ActiveRecord::Migration[5.2]
  def change
    change_table :blog_posts do |t|
      t.integer :user_id
    end
  end
end
