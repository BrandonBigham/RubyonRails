class Comment < ActiveRecord::Base
    belongs_to :event
    belongs_to :user
  
    validates :comment, presence: true, length: { minimum: 2 }
end
