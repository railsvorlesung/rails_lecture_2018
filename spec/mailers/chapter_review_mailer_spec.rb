require "rails_helper"

RSpec.describe ChapterReviewMailer, type: :mailer do

  let(:book_chapter) do
    FactoryBot.create(:book_chapter, :with_authors_and_reviewers)
  end

  describe "ask_for_review" do
    let(:mail) { ChapterReviewMailer.ask_for_review(book_chapter) }

    it "renders the headers" do
      expect(mail.subject).to eq("Ask for review")
      expect(mail.to).to eq(book_chapter.reviewers.map(&:email))
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match(I18n.t('chapter_review_mailer.ask_for_review', title: book_chapter.title))
    end
  end

  describe "notify_writer" do
    let(:mail) { ChapterReviewMailer.notify_writer(book_chapter) }

    it "renders the headers" do
      expect(mail.subject).to eq("Review completed")
      expect(mail.to).to eq(book_chapter.authors.map(&:email))
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match(I18n.t('chapter_review_mailer.notify_writer', title: book_chapter.title))
    end
  end
end
