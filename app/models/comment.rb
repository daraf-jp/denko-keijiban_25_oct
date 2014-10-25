class Comment < ActiveRecord::Base
  belongs_to :board, dependent: :destroy
end
