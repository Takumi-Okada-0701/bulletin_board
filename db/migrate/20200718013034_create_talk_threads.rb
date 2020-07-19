class CreateTalkThreads < ActiveRecord::Migration[5.2]
  def change
    create_table :talk_threads do |t|
      t.references :user,  foreign_key: true
      t.string     :title, null: false, default: ""

      t.timestamps
    end
  end
end
