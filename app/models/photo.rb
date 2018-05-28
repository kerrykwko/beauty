class Photo < ApplicationRecord
  mount_uploader :image, ImageUploader

  # Direct associations

  belongs_to :product

  belongs_to :skintone

  # Indirect associations

  # Validations

end
