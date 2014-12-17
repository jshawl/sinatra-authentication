class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      # We need these attributes for SimpleAuthentication to work
      t.string :email
      t.string :hashed_password
      t.string :salt
      # You can add more attributes here if you want your own
    end

    # This is an index to make sure the email is unique to each user
    add_index :users, :email, :unique => true
  end
end
