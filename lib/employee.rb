class Employee < ActiveRecord::Base
  belongs_to :store
  validates :store_id, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, numericality: { only_integer: true }, :inclusion => 40..200
end
