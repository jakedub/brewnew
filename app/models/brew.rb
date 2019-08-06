class Brew < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :ferment
  belongs_to :hop
  belongs_to :yeast
  belongs_to :note
  belongs_to :recipe
  belongs_to :mash

  # after_save :set_original

  accepts_nested_attributes_for :ferment, :hop, :yeast, :note, :recipe, :mash

  has_many :versions, class_name: "Brew", foreign_key: "original_id"
  belongs_to :original, class_name: "Brew", required: false

  private
  def set_original
    self.original_id = self.id
  end
end
