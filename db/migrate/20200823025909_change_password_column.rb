class ChangePasswordColumn < ActiveRecord::Migration[5.2]
  def up
    change_column :users, :password, :password_digest
    # add_column :users, :remember_token, :string
  end

  # def down
  #   change_column :users, :password_digest, :password
  #   remove_column :users, :remember_token, :string
  # end
end
