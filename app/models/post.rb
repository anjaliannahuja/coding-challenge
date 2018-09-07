class Post < ApplicationRecord
  has_many :comments, dependent: :destroy

  def self.search(term)
    if term
      where('title LIKE ?', "%#{term}%")
    else
      all
    end
  end

end
