class Pack < ApplicationRecord
  validates :name, :price, presence: true
  belongs_to :masjid
end
