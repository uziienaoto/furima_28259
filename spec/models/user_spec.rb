require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end

  describe 'ユーザー新規登録' do
      context '新規登録がうまくいくとき' do
    it "nicknameとemail、passwordとpassword_confirmation、family_nameとfirst_name、family_name_kanaとfirst_name_kanaが存在すれば登録できる" do
    end

    context '新規登録がうまくいかないとき' do
    it "nicknameが空だと登録できない" do
      @user.nickname = ""
      @user.valid?
      expect(@user.errors.full_messages).to include("Nickname can't be blank")
    end
    it "emailが空では登録できない" do
      @user.email = "" 
      @user.valid?
      expect(@user.errors.full_messages).to include("Email can't be blank")
    end
    it "family_nameが空では登録できない" do
      @user.family_name = "" 
      @user.valid?
      binding.pry
      expect(@user.errors.full_messages).to include("Family name can't be blank")
    end
    it "family_nameは全角でないと登録できない" do
      @user.family_name = "12345" 
      @user.valid?
      binding.pry
      expect(@user.errors.full_messages).to include("Family name は全角で入力してください。")
    end
    it "family_name_kanaが空では登録できない" do
      @user.family_name_kana = "" 
      @user.valid?
      binding.pry
      expect(@user.errors.full_messages).to include("Family name kana can't be blank")
    end
    it "family_name_kanaは全角カタカナでないと登録できない" do
      @user.family_name_kana = "次郎" 
      @user.valid?
      binding.pry
      expect(@user.errors.full_messages).to include("Family name kana は全角カタカナで入力して下さい。")
    end
    it "first_nameが空では登録できない" do
      @user.first_name = "" 
      @user.valid?
      binding.pry
      expect(@user.errors.full_messages).to include("First name は全角で入力してください。")
    end
    it "first_nameは全角でないと登録できない" do
      @user.first_name = "1234" 
      @user.valid?
      binding.pry
      expect(@user.errors.full_messages).to include("First name can't be blank")
    end
    it "first_name_kanaは全角カタカナでないと登録できない" do
      @user.first_name_kana = "山田" 
      @user.valid?
      binding.pry
      expect(@user.errors.full_messages).to include("First name kana は全角カタカナで入力して下さい。")
    end
    it "Passwordが空では登録できない" do
      @user.Password  = "" 
      @user.valid?
      binding.pry
      expect(@user.errors.full_messages).to include("Password can't be blank")
    end
    it "Passwordは半角英数でなければ登録できない" do
      @user.Password  = "あああああ" 
      @user.valid?
      binding.pry
      expect(@user.errors.full_messages).to include("Password は半角英数で入力してください。")
    end
    it "Passwordは半角英数混合でなければ登録できない" do
      @user.Password  = "111111" 
      @user.valid?
      binding.pry
      expect(@user.errors.full_messages).to include("Password は半角英数混合で入力してください。")
     end
   end
 end
end

 