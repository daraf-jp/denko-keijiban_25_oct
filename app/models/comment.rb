class Comment < ActiveRecord::Base
  belongs_to :board, dependent: :destroy

  validates :content, presence: true
end
