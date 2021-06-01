class AddTitleAndDescriptionToOffers < ActiveRecord::Migration[6.0]
  def change
    add_column :offers, :title, :string, default: "Hello"
    add_column :offers, :description, :text, default: "No description Yet"
  end
end
