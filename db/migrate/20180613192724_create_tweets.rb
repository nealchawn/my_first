class CreateTweets < ActiveRecord::Migration[5.2]
  def change
    create_table :tweets do |t|
      t.string :status
      t.integer :zombie_id

      t.timestamps
    end
  end
end
