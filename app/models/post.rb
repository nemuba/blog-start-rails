class Post < ApplicationRecord
  enum category: ['Ruby on Rails', 'Java', 'Ruby', 'Linux', 'OOP']
  paginates_per 3
  has_many :comments, dependent: :destroy

  def self.search(query)
    where('title like ?', "%#{query}%")
  end
end
