require 'test_helper'

class PostTest < ActiveSupport::TestCase
   
   def setup
     @post = Post.new(title: "Test", body: "test", link: "reddit.com", user_id: 3)
   end
   
   test "post should be valid" do
     assert @post.valid?
   end

   test "post shouldn't be valid without title" do
     @post.title = ""
     assert_not @post.valid?
   end

   test "post should be valid without link" do
     @post.link = ""
     assert @post.valid?
   end

   test "post should be valid without body" do
     @post.body = ""
     assert @post.valid?
   end

   test "post shouldn't be valid without user_id" do
       @post.user_id = ""
       assert_not @post.valid?
   end
    
   test "post shouldn't be valid with 1001 character long body" do
       @post.body = "a" * 1001
       assert_not @post.valid?
   end
end
