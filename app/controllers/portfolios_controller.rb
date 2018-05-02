class PortfoliosController < ApplicationController
  def show
  	@user = current_user
  	@portfolio = @user.portfolios.first
  end

  private

end
