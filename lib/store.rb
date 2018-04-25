class Store < ActiveRecord::Base
  has_many :employees
  before_destroy :check_employees
  validates :name, presence: true, length: {minimum: 3}
  validates :annual_revenue, presence: true, numericality: {greater_than_or_equal_to: 0}
  validate :must_carry_mens_or_womens_apparel

  

  def must_carry_mens_or_womens_apparel
    if !womens_apparel && !mens_apparel
      errors.add(:apparel_type, "error: stores must carry at least one of men's or women's apparel")
    end
  end

  private
    def check_employees
      if employees.size != 0
        raise "Destroy aborted!"
      end
    end

end
