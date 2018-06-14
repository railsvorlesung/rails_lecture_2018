class Book < ApplicationRecord
  include FlagShihTzu

  has_many :book_chapters
  has_flags(
    1 => :published,
    2 => :on_sale
  )

  accepts_nested_attributes_for :book_chapters, reject_if: proc {|attributes|
    attributes['_destroy'].blank? and attributes['title'].blank? 
  }, allow_destroy: true

end
