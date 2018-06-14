# Preview all emails at http://localhost:3000/rails/mailers/chapter_review
class ChapterReviewPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/chapter_review/ask_for_review
  def ask_for_review
    ChapterReviewMailer.ask_for_review
  end

end
