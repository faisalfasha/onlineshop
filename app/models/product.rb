class Product < ApplicationRecord
  before_destroy :not_referenced_by_any_line_item
	belongs_to :user
  has_many :line_items


  def not_referenced_by_any_line_item
    unless line_items.empty?
      errors.add(:base, "Line items present")
      throw :abort
    end
  end
end
