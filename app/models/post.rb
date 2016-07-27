class Post < ActiveRecord::Base
validates :title, presence: true
validates :user_id, presence: true
validates :body, length: { maximum: 1000 }
belongs_to :user
end
