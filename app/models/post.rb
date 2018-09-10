class Post < ApplicationRecord
  # Can have many comments, delete all comments if post deleted
  has_many :comments, dependent: :destroy

  # Add in search capablities to search both title and body fields
  def self.search(term)
    if term
      where('title LIKE ? OR body LIKE ?', "%#{term}%", "%#{term}%")
    else
      all
    end
  end

end
