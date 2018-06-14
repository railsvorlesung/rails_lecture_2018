require 'rails_helper'

RSpec.describe BookChapter, type: :model do

  context 'associations' do
    it {should have_and_belong_to_many(:authors) }
  
  end # context 'associations'
end
