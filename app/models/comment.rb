class Comment < ActiveRecord::Base
  belongs_to :shot
  belongs_to :user
end
