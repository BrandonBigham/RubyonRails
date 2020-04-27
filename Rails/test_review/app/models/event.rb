class Event < ActiveRecord::Base
    belongs_to :user
    has_many :joins, dependent: :destroy
    has_many :users, through: :joins, source: :user
    has_many :comments, dependent: :destroy
  
    validates :name, :date, :city, :state, presence: true
    validates :date, inclusion: { in: ->(date) { (Date.today..) }, :message => "can't be in past"}
end
