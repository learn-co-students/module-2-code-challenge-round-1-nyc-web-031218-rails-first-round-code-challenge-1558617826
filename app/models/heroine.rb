class Heroine < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :super_name, presence: true, uniqueness: true
  validates :power, presence: true

  belongs_to :power

end
