class Cocktail < ApplicationRecord
has_many : doses, dependant: :destroy
end
