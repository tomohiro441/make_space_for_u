class CreateSpaceUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :space_users do |t|
      t.references :space, foreign_key: true
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
