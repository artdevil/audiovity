class AddInfoUserToUsers < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string

    add_column :users, :last_name, :string

    add_column :users, :birthday, :date

    add_column :users, :profile_address, :string

    add_column :users, :language_selection, :string

    add_column :users, :time_zoned, :string

    add_column :users, :roles, :string

    add_column :users, :profile_picture, :string

  end
end
