class User < ApplicationRecord
	after_create :create_portfolio
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :portfolios, dependent: :destroy

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  private

  def create_portfolio
  	portfolio = Portfolio.new(user: self, absolute_return: 0, total_cost: 0, total_current_price: 0, yearly_return: 0)
  	portfolio.save
  end

end
