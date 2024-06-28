class CreateNotificationTable < ActiveRecord::Migration[7.1]
  def change
    create_table :notification_tables do |t| 
      t.integer :type
      t.text :description

      t.timestamps
    end
  end
end
