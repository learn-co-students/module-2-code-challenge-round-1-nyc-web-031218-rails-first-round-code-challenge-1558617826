class Heroine < ApplicationRecord
  validates :name, presence: true
  validates :super_name, presence: true
  validates :power, uniqueness: true
  
  belongs_to :power

end
