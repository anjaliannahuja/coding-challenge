class Comment < ApplicationRecord
  # Comment is child of post
  belongs_to :post
end
