class Article < ApplicationRecord
    validates :title, presence: true, length: {minimum: 6, mamimum: 100}
    validates :description, presence: true, length: {minimum: 10, mamimum: 300}
end