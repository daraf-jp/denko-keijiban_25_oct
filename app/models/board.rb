class Board < ActiveRecord::Base
  has_many :comments

  validates :name, presence: true
end
