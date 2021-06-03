class AddPriceToOffers < ActiveRecord::Migration[6.0]
  def change
    add_column :offers, :price, :string, default: "No price Yet"
  end
end
