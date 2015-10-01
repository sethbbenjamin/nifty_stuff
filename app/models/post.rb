class Post < ActiveRecord::Base
  validates :title, presence: true, length: { minimum: 2 }
  validates :description, presence: true
  validates :link, presence: true
  #validates :link, presence: true, :format => URI::regexp(%w(http https))
end
