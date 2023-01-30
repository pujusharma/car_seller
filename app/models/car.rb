class Car < ApplicationRecord
    has_one_attached :image    
    validates :image, attached: true, content_type: [:png, :jpg, :jpeg]
end
