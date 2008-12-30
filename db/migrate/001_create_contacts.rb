class CreateContacts < ActiveRecord::Migration
  def self.up
    create_table :contacts do |t|
      t.string :first
      t.string :last
      t.string :company
      t.string :email
      t.datetime :time

      t.timestamps
    end
  end

  def self.down
    drop_table :contacts
  end
end
