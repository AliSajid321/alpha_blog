class UpdateCreateArticleCategories < ActiveRecord::Migration[7.0]
  def change
    add_column :article_categories, :article_id, :int
    add_column :article_categories, :category_id, :int  
  end
end
