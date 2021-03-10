class Article < ApplicationRecord
    has_many :categories

    scope :active, 			 -> { where('active = ?', true) }
    scope :alphabetical, -> { order('title') }
end
