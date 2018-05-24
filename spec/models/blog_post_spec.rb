require 'rails_helper'

RSpec.describe BlogPost, type:  :model do

  it 'should validate title' do
    subject = BlogPost.new
    expect(subject).to_not be_valid
    expect(subject.errors[:title]).to be_present
  end

  describe '#to_pdf' do
    let(:blog_post) do
      FactoryBot.create(:blog_post)
    end

    it 'should generate pdf' do
      expect(blog_post.to_pdf).to be_kind_of(File)
    end
  end # describe      '#to_pdf'
end
