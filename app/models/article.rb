class Article < ApplicationRecord
  include Visible
  has_many :comments, dependent: :destroy
  
  validates :title, presence: true
  validates :author, presence: true
  has_rich_text :body
end
