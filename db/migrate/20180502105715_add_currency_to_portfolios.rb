class AddCurrencyToPortfolios < ActiveRecord::Migration[5.1]
  def change
  	add_column :portfolios, :currency, :string, default: "USD"
  end
end
