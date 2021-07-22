class ChangeColumns < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :name, :username
    remove_column :users, :email

    change_column :users, :username, :string, null: false
    add_index :users, :username, unique: true

  end
end
