class Car < ApplicationRecord
    has_one_attached :image    
    validates :image, attached: true, content_type: [:png, :jpg, :jpeg] , dimension: { width: 200, height: 200 }
end
