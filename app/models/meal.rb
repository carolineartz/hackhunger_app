class Meal < ApplicationRecord
  belongs_to :program
  has_many :menu_items
end
