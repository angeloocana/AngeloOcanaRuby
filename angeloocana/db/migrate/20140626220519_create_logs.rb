class CreateLogs < ActiveRecord::Migration
  def change
    create_table :logs do |t|
      t.string :controller
      t.string :action
      t.string :url
      t.string :ip
      t.integer :user_id

      t.timestamps
    end
  end
end
