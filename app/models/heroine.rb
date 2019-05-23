class Heroine < ApplicationRecord
    belongs_to :power
    validates  :super_name, uniqueness: true


    def self.find_power(heroine)
        Power.find { |power| heroine.power_id == power.id}
    end
end
