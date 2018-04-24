class Store < ActiveRecord::Base
  has_many :employees
  validates :name, presence: true, length: {minimum: 3}
  validates :annual_revenue, presence: true, numericality: true
  validate :must_carry_mens_or_womens_apparel

  def must_carry_mens_or_womens_apparel
    if !womens_apparel && !mens_apparel
      errors.add(:apparel_type, "error: stores must carry at least one of men's or women's apparel")
    end
  end

end
