class CreateYoursUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :yours_users do |t|
      t.text :login_id
      t.text :password
      t.integer :reserve_count
      t.text :slack
      t.time :start_time
      t.time :end_time
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
