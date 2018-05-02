class CreateShares < ActiveRecord::Migration[5.1]
  def change
    create_table :shares do |t|
      t.string :name
      t.string :ticker
      t.timestamp :buy_date
      t.decimal :buy_price
      t.decimal :current_price
      t.references :portfolio, foreign_key: true

      t.timestamps
    end
  end
end
