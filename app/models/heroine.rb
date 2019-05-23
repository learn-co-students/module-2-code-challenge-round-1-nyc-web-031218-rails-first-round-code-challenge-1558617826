class Heroine < ApplicationRecord
    belongs_to :power
    validates :power_id, presence: true, uniqueness: true
    validates :super_name, presence: true, uniqueness: true
end
