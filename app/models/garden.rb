class Garden < ApplicationRecord
  validates :name, :banner_url, presence: true
  has_many :plants, dependent: :destroy
end
