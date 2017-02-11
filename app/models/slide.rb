class Slide < ApplicationRecord
  has_many :pages, inverse_of: :slide
end
