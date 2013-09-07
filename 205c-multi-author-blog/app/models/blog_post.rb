class BlogPost < ActiveRecord::Base
  belongs_to :author
  
  validates :written_at, presence: true
  validates :body,       presence: true
  validates :author_id,  presence: true
end
