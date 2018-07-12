class Post < ApplicationRecord
  paginates_per 3
  has_many :comments
end
