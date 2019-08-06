class Ferment < ApplicationRecord
  has_one :measure
  has_one :brew
  
end
