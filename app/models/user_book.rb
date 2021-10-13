class UserBook < ApplicationRecord
  belongs_to :user
  belongs_to :book

  validates :book_id, presence: true
  validates :book_id, uniqueness: { scope: :user_id, message: "already on the list" }

end
