class AddProfileUrlToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :profile, :string
    add_column :users, :url, :text
  end
end
