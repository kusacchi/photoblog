require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = build(:user)
  end

    it "nameが空だとNG" do
      @user.name = ""
      expect(@user.valid?).to eq(false)
    end

    it 'emailが空だとNG' do
      @user.email = ''
      expect(@user.valid?).to eq(false)
    end

    it "emailに@がないとNG" do
      @user.email = "user.ac.jp"
      expect(@user.valid?).to eq(false)
    end

    it "emailに.がないとNG" do
      @user.email = "user@acjp"
      expect(@user.valid?).to eq(false)
    end

    it "emailが重複しているとNG" do
      @user.email = "hiro@example.com"
      @user.valid?
      expect(@user.errors[:email])
    end

    it "passwordがないとNG" do
      @user.password = ""
      expect(@user.valid?).to eq(false)
    end

    it "passwordが7文字以下だとNG" do
      @user.password = "passwor"
      expect(@user.valid?).to eq(false)
    end

end


