class CreateTalkThreadCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :talk_thread_categories do |t|
      t.references :talk_thread,  foreign_key: true
      t.references :category,     foreign_key: true

      t.timestamps
    end
  end
end
