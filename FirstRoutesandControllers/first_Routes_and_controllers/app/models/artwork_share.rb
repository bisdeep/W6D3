class ArtworkShare < ApplicationRecord
    validates :viewer_id, :artwork_id, presence: true

    belongs_to :viewer,
        foreign_key: :viewer_id, 
        class_name: :User

    belongs_to :artwork,
        foreign_key: :artwork_id, 
        class_name: :Artwork
end