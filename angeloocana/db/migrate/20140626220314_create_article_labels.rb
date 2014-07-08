class CreateArticleLabels < ActiveRecord::Migration
  def change
    create_table :article_labels do |t|
      t.integer :article_id
      t.integer :label_id

      t.timestamps
    end
  end
end
