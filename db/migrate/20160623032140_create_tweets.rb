class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.references :user, index: true, foreign_key: true
      t.string :content

      t.timestamps null: false
    end
  end
end
