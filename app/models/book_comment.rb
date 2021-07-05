class BookComment < ApplicationRecord
  belongs_to :user
  belongs_to :book, optional: true

  validates :content, presence: true
end
