class Post < ApplicationRecord
  # belongs_to :user
  validates :score, :subject, presence: true
end
