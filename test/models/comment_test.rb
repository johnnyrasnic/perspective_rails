require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  def setup
      @comment = Comment.new(body: "test", user_id: 3, post_id: 1, comment_id:nil)
  end

 test "comment should be valid" do
     assert @comment.valid?
 end

 test "comment should not be valid without user_id" do
     @comment.user_id = nil
     assert_not @comment.valid?
 end

 test "comment should not be valid without body" do
     @comment.body = ""
     assert_not @comment.valid?
 end

 test "comment should not be valid without post_id" do
     @comment.post_id = nil
     assert_not @comment.valid?
 end

 test "comment body should not be valid with too long body" do
     @comment.body = "a" * 501
     assert_not @comment.valid?
 end
end
