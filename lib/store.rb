class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: {minimum: 3}
  validates :annual_revenue, numericality: { only_integer: true, greater_than_or_equal_to: 0}

  validate :carries_at_least_one_type_of_apperal

  def carries_at_least_one_type_of_apperal
    unless mens_apparel.present? || womens_apparel.present?
      errors.add(:apparel, "not assigned, each store must carry at least one type of appreal, mens or womens")
    end
  end
end
