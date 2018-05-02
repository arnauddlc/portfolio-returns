class Portfolio < ApplicationRecord
  belongs_to :user
  validates :absolute_return, :total_cost, :total_current_price, :yearly_return, presence: true
end
