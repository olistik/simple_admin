class CreateMailboxes < ActiveRecord::Migration
  def self.up
    create_table :mailboxes do |t|
      t.string :name
      t.integer :capacity
      t.integer :domain_id

      t.timestamps
    end
  end

  def self.down
    drop_table :mailboxes
  end
end
