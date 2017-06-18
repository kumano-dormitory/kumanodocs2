class Comment < ApplicationRecord
  belongs_to :block
  belongs_to :article
end
