class Masjid < ApplicationRecord
    belongs_to :user
    has_many :packs
end
