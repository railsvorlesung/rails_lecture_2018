class BookChapter < ApplicationRecord
  belongs_to :book

  has_and_belongs_to_many :authors, class_name: 'User', join_table: :book_chapters_authors

  has_and_belongs_to_many :reviewers, class_name: 'User', join_table: :book_chapters_reviewers
  
end
