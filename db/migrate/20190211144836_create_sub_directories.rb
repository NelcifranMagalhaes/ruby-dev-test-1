class CreateSubDirectories < ActiveRecord::Migration[5.2]
  def change
    create_table :sub_directories do |t|
      t.string :name
      t.references :directory, foreign_key: true

      t.timestamps
    end
  end
end
