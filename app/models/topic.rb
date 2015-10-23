class Topic < ActiveRecord::Base
  has_many :posts, dependent: :destroy

  validates :topic, length: { minimum: 5 }, presence: true
  validates :description, length: {minimum: 15}, presence: true
  validates :topic, presence: true
end
