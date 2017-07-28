class Recipe < ApplicationRecord
  has_many :fixins, dependent: :destroy
  has_many :steps, dependent: :destroy

  def self.search(search)
    where("title LIKE ? OR description LIKE ?", "%#{search}%", "%#{search}%") 
  end
end
