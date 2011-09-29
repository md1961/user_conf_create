class CreateUserConfigurationValues < ActiveRecord::Migration
  def self.up
    create_table :user_configuration_values do |t|
      t.references :user                   , :null => false
      t.references :user_configuration_name, :null => false
      t.string     :value

      t.timestamps
    end

    add_index :user_configuration_values, [:user_id, :user_configuration_name_id], :unique => true
  end

  def self.down
    drop_table :user_configuration_values
  end
end

