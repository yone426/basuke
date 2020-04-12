# require 'rails_helper'

# describe Tweet do
#   #nameとtextが入っていれば有効であること
#   it "is valid with name and text"
# end
require 'rails_helper'

describe Tweet do
  describe '#create' do

    it "nameがない場合は登録できないこと" do
      tweet = build(:tweet, name: nil)
      tweet.valid?
      expect(tweet.errors[:name]).to include("can't be blank")
    end

    it "emailがない場合は登録できないこと" do
      tweet = build(:tweet, text: nil)
      tweet.valid?
      expect(tweet.errors[:text]).to include("can't be blank")
    end
  end
end