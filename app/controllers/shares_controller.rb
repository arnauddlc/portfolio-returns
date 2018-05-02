class SharesController < ApplicationController
  def new
  	set_portfolio
  	@share = Share.new(portfolio: @portfolio, current_price: 10)
  end

  def create
  	set_portfolio
  	@share = Share.new(share_params)
  	@share.portfolio = @portfolio
  	@share.current_price = @share.buy_price * 1.1
  	@share.save
  	redirect_to root_path
  end

  private

  def share_params
    params.require(:share).permit(:name, :ticker, :buy_date, :buy_price)
  end

  def set_portfolio
  	@portfolio = Portfolio.find(params[:portfolio_id])
  end

end
