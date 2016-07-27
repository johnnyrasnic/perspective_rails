class Comment < ActiveRecord::Base
    belongs_to :user
    belongs_to :comment
    belongs_to :post
    has_many :replies, class_name: "Comment", foreign_key: "comment_id"
    validates :body, presence: true, length: { maximum: 500 }
    validates :post_id, presence: true
    validates :user_id, presence: true
end
