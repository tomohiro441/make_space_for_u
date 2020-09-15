class CreateSpaces < ActiveRecord::Migration[6.0]
  def change
    create_table :spaces do |t|
      t.string :name, null: false
      t.text :info, null: false
      t.timestamps
    end
  end
end
