class Task < ActiveRecord::Base
  belongs_to :user
  has_and_belongs_to_many :users
  default_scope -> { order(created_at: :desc) }
  validates :content, :user, presence: true
end