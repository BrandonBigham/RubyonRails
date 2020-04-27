class CreateJoins < ActiveRecord::Migration
  def change
    create_table :joins do |t|
      t.references :user
      t.references :event

      t.timestamps null: false
    end
  end
end
