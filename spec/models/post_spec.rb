require 'spec_helper'
describe Post do
  before(:each) do
    @post = Post.new(title: "This is a title", body: "this is a body of an article")
  end

  it "is valid with valid attrs" do
    @post.should be_valid
  end

  it "is not valid without a title" do
    @post.title = nil
    @post.should_not be_valid
  end

  it "is not valid without a body" do
    @post.body = nil
    @post.should_not be_valid
  end

end
