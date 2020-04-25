require 'rails_helper'

RSpec.describe Post, type: :model do
  before do
    @post = Post.create(date: Date.today, rationale: "Bla bla bla")
  end
  describe "creation" do
    it "can be created" do
      expect(@post).to be_valid
    end
    it "cannot be created without a date and rationale" do
      @post.date = nil
      @post.rationale = nil
      expect(@post).to_not be_valid
      
    end
  end
end