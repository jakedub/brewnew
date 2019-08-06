class Recipe < ApplicationRecord
  paginates_per 10

  has_one :brew
end

private
