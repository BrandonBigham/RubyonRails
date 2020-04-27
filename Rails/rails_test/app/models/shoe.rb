class Shoe < ActiveRecord::Base
  belongs_to :user
  has_many :purchases, dependent: :destroy

  validates :name, :price, presence: true
end
