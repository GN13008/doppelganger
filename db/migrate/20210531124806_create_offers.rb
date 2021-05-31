class CreateOffers < ActiveRecord::Migration[6.0]
  def change
    create_table :offers do |t|
      t.references :user, null: false, foreign_key: true
      t.string :disponibility
      t.string :localisation

      t.timestamps
    end
  end
end
