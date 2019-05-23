class Heroine < ApplicationRecord
    belongs_to :power

    def self.find_power(heroine)
        Power.find { |power| heroine.power_id == power.id}
    end
end
