class AddAvatarToArticles < ActiveRecord::Migration[5.1]
  def change
    add_column :articles, :featureimage, :string
  end
end
