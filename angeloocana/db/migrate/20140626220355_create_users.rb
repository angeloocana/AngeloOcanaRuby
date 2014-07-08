class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :login
      t.string :senha
      t.datetime :deleted_at
      t.timestamps
    end
  end
end
