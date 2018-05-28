class Photo < ApplicationRecord
  # Direct associations

  belongs_to :product

  belongs_to :skintone

  # Indirect associations

  # Validations

end
