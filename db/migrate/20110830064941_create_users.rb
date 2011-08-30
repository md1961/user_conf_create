class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string  :name            , :null => false
      t.string  :hashed_password
      t.boolean :is_writer       , :null => false, :default => false
      t.boolean :is_administrator, :null => false, :default => false

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
