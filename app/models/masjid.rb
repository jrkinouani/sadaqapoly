class Masjid < ApplicationRecord
  has_many :packs
  belongs_to :user
end
