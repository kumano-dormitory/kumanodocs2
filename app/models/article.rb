class Article < ApplicationRecord
  has_many :category, through: :article_categories
  has_many :comments
  belongs_to :author, class_name: :user
  belongs_to :meeting

end
