class Product < ApplicationRecord
  # Direct associations

  has_many   :photos,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
