class Share < ApplicationRecord
  belongs_to :portfolio
  # belongs_to :user through :portfolio

  def get_api_data
  	url = "https://www.alphavantage.co/query?function=TIME_SERIES_INTRADAY&symbol=#{self.ticker}&interval=1min&apikey=6NMSD98HUMQLYIDA"
		data_serialized = open(url).read
		data = JSON.parse(data_serialized)
		data
		self.ticker
  end	

end
