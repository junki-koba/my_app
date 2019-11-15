class Post < ApplicationRecord
  validates :score, :subject, presence: true
end
