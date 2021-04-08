class Article < ApplicationRecord
    belongs_to :user
    has_many :article_categories
    has_many :categories, through: :article_categories
    validates :title, presence: true, length: {minimum: 6, mamimum: 100}
    validates :description, presence: true, length: {minimum: 10, mamimum: 300}
end