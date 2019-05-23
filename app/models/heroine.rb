class Heroine < ApplicationRecord
  belongs_to :power
  validates :super_name, uniqueness: true
  validates :power, numericality: {equal_to: 1}
end
