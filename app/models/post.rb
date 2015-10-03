class Post < ActiveRecord::Base

  belongs_to :user
  default_scope -> { order(created_at: :desc) }

  validates :title, presence: true, length: { minimum: 2 }
  validates :description, presence: true
  validates :link, presence: true
  validates :user_id, presence: true
  #validates :link, presence: true, :format => URI::regexp(%w(http https))
end
