class Note < ApplicationRecord 
    has_rich_text :text
    validates :title, presence: true
end