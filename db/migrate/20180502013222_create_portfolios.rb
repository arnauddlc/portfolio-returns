class CreatePortfolios < ActiveRecord::Migration[5.1]
  def change
    create_table :portfolios do |t|
      t.references :user, foreign_key: true
      t.decimal :absolute_return, default: 0.00
      t.decimal :total_cost, default: 0.00
      t.decimal :total_current_price, default: 0.00
      t.float :yearly_return, default: 0.0

      t.timestamps
    end
  end
end
