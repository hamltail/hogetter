class ChangeColumnsAddNotnullToUsers < ActiveRecord::Migration[7.0]
  def change
    change_column_null :users, :username, false
  end
end
