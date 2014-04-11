class Usertable < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.text :name
      t.string :password_digest
      t.text :email
      t.boolean :account_type
      t.timestamps
  end
  end
end
