class CreateFileItems < ActiveRecord::Migration[8.0]
  def change
    create_table :file_items do |t|
      t.references :directory, null: false, foreign_key: true
      t.timestamps
    end
  end
end
