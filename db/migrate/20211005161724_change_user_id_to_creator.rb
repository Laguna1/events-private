class ChangeUserIdToCreator < ActiveRecord::Migration[6.1]
  def change
    rename_column :events, :user_id, :creator
  end
end
