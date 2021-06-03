class AddBodyTypeAndHeightToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :body_type, :string, default: "No body type yet"
    add_column :users, :height, :string, default: "No height yet"
  end
end
