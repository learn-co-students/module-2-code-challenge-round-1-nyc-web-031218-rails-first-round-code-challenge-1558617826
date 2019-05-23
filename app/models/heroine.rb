class Heroine < ActiveRecord::Base
  has_many :powers
  validates :name, :super_name, presence: true
  validates :super_name, uniqueness: true
end
