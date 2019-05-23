class Power < ApplicationRecord
  has_many :heroines

  validates :name, :description, presence: true

  def display_name
    self.name.split.map do |w|
      w.capitalize
    end.join(" ")
  end

  def self.powers_list
    Power.all.map do |p|
      p.name
    end
  end

end
