class RemoveUserIdFromGuides < ActiveRecord::Migration[6.1]
  def change
    remove_column :guides, :user_id, :user
  end
end
