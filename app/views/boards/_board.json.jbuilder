json.extract! board, :id, :name, :created_at, :updated_at
json.comments board.comments, partial: 'comments/comment', as: :comment
