class DeleteColumnsInCreateArticleCategories < ActiveRecord::Migration[7.0]
  def change
    remove_column :article_categories, :created_at
    remove_column :article_categories, :updated_at

  end
end
