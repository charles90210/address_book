class AddUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :given_name
      t.string :family_name
      t.string :email
      t.string :home_address
      t.timestamps
    end
  end
end
