class CreateBookChapters < ActiveRecord::Migration[5.2]
  def change
    create_table :book_chapters do |t|
      t.string :title
      t.text :body

      t.timestamps
    end

    create_table :book_chapters_authors, id: false do |t|
      t.integer :book_chapter_id
      t.integer :user_id
    end

    create_table :book_chapters_reviewers, id: false do |t|
      t.integer :book_chapter_id
      t.integer :user_id
    end

  end
end
