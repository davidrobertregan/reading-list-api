class BookSerializer < BookIndexSerializer
  has_many :users
end
