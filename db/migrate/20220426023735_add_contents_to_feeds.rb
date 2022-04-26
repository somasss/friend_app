class AddContentsToFeeds < ActiveRecord::Migration[6.0]
  def change
    add_column :feeds, :content, :string
  end
end
