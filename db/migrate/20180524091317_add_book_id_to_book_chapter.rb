class AddBookIdToBookChapter < ActiveRecord::Migration[5.2]
  def change
    change_table :book_chapters do |t|
      t.integer :book_id
    end
  end
end
