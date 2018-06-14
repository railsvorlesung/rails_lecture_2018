require 'rails_helper'

RSpec.describe BlogPostsController, type: :controller do

  render_views

  it 'should redirect to login' do
    get :index
    expect(response.status).to be(302)
  end

  context 'signed in' do
    before do
      sign_in FactoryBot.create(:user)
    end
    context 'without blog posts' do
      it 'should be possible to visit index' do
        get :index
        expect(response).to be_successful
      end

    end # context 'without blog posts'

    context 'with blog posts' do
      before do
        blog_posts
      end

      let(:blog_posts) do
        (0..50).map { FactoryBot.create(:blog_post) }
      end

      it 'should be possible to visit index' do
        get :index
        expect(response).to be_successful
      end

      it 'should only display the first 25' do
        get :index
        blog_posts[0..24].each do |post|
          expect(response.body).to include("blog_posts/#{post.id}")
        end
      end

    end # context 'with blog posts'
  end # context 'signed in'

end
