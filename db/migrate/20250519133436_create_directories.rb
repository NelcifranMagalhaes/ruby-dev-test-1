class CreateDirectories < ActiveRecord::Migration[8.0]
  def change
    create_table :directories do |t|
      t.string :name
      t.integer :parent_id
      t.timestamps
    end
  end
end
