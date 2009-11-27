class CreateDomainsUsers < ActiveRecord::Migration
  def self.up
    create_table :domains_users, :id => false do |t|
      t.integer :user_id
      t.integer :domain_id
    end
  end

  def self.down
    drop_table :domains_users
  end
end
