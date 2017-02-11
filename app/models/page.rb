class Page < ApplicationRecord
  belongs_to :slide, dependent: :destroy, inverse_of: :pages
end
