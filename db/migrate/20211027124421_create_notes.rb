class CreateNotes < ActiveRecord::Migration[6.1]
  def change
    create_table :notes do |t|
      t.string :title, null: false
      t.text :content, null: false
      t.datetime :published, null: false
      t.integer :priority, default: '0'

      t.timestamps
    end
  end
end
