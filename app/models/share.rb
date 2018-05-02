class Share < ApplicationRecord
  belongs_to :portfolio
  # belongs_to :user through :portfolio
end
