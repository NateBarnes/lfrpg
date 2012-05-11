class Comment < ActiveRecord::Base
  attr_accessible :char_id, :comment, :owner_id, :owner_type, :user_id
end
