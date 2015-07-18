class AddNationalToUser < ActiveRecord::Migration
  def change
    add_column :users, :national, :string
  end
end
