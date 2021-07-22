class Artwork < ApplicationRecord
    validates :artist_id, presence: true, uniqueness: true
    validates :title, uniqueness: { scope: :artist_id}

    belongs_to :artist,
        foreign_key: :artist_id, 
        class_name: :User

    has_many :shares,
        foreign_key: :artwork_id, 
        class_name: :ArtworkShare

    has_many :shared_viewers, 
        through: :shares, 
        source: :viewer

    def self.findart(user_id)
        #Artwork.joins(:shares).joins(:artist).where("viewer_id = (?)", user_id); ATTEMPT 1

        #variable = user_id
        Artwork.joins(:shares).where("viewer_id = (?)", user_id)
        .or(Artwork.joins(:artist).where("artist_id = (?)", user_id));
    end
end