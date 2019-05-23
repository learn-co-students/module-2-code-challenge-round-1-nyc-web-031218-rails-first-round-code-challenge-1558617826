class Power < ApplicationRecord
  has_many :heroines

  validates :name, :description, presence: true

  def display_name
    self.name.split.map do |w|
      w.capitalize
    end.join(" ")
  end

end
