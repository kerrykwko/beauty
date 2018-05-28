class Skintone < ApplicationRecord
  # Direct associations

  has_many   :photos,
             :dependent => :destroy

  has_many   :users,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
