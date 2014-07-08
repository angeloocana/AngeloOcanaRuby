class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.datetime :date_on_page
      t.datetime :display_in
      t.text :text_html
      t.integer :last_user_id
      t.string :url_cod

      t.timestamps
    end
  end
end
