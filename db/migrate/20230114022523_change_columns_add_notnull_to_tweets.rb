class ChangeColumnsAddNotnullToTweets < ActiveRecord::Migration[7.0]
  def change
    change_column_null :tweets, :content, false
  end
end
