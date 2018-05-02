class PortfoliosController < ApplicationController
  def show
  	require 'json'
  	require 'open-uri'
  	@user = current_user
  	@portfolio = @user.portfolios.first
  end

  private

end
