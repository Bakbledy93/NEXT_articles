class RemoveTileFromArticle < ActiveRecord::Migration[6.0]
  def change
    remove_column :articles, :tile, :string
    add_column :articles, :title, :string
  end
end
