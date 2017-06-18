class Article < ApplicationRecord
  has_many :category, through: :article_categories
  has_many :comments
  belongs_to :author, class_name: :user
  belongs_to :meeting

  before_validation :set_number

  private
  def set_number
    if number.nil? && meeting.exists?
      number = (meeting.articles.maximum(:number) || 0) + 1
    end
    true
  end
end
