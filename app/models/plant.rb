class Plant < ApplicationRecord
  belongs_to :garden
  validates :name, length: { minimum: 2 }, presence: true
  validates :image_url, presence: true
end
