class CreateUserConfigurationNames < ActiveRecord::Migration
  def self.up
    create_table :user_configuration_names do |t|
      t.string :name , :null => false
      t.string :clazz, :null => false, :default => 'String'

      t.timestamps
    end

    add_index :user_configuration_names, :name, :unique => true
  end

  def self.down
    drop_table :user_configuration_names
  end
end

