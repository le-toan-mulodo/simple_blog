require 'spec_helper'

describe Comment do
  before(:each) do
    @comment = Comment.new(body: "this is my comment")
  end
  it "is valid with attrs" do
    @comment.should be_valid
  end

  it "is invalid without body info" do
    @comment.body = nil
    @comment.should_not be_valid

  end

end
