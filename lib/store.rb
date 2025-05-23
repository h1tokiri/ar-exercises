class Store < ActiveRecord::Base
  has_many :employees
  
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validate :must_carry_apparel
  
  private
  
  def must_carry_apparel
    # Custom validation to ensure store carries at least men's or women's apparel
    if !mens_apparel && !womens_apparel
      errors.add(:base, "Store must carry at least one of men's or women's apparel")
    end
  end
end