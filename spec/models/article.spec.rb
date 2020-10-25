require 'rails_helper'

RSpec.describe Article, type: :model do
  before do
    @article = build(:article)
  end

    it "titleが空だとNG" do
      @article.title = ""
      expect(@article.valid?).to eq(false)
    end

    it 'bodyが空だとNG' do
      @article.email = ''
      expect(@article.valid?).to eq(false)
    end

end


