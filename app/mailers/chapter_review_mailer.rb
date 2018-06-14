class ChapterReviewMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.chapter_review_mailer.ask_for_review.subject
  #
  def ask_for_review(book_chapter)
    @book_chapter = book_chapter

    mail({
      to: @book_chapter.reviewers.map(&:email)
    })
  end

  def notify_writer(book_chapter)
    @book_chapter = book_chapter
    
    mail({
      subject: 'Review completed',
      to: @book_chapter.authors.map(&:email)
    })
  end # #notify_writer
end
