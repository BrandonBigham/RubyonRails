class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :Dojo_Location
      t.string :Favorite_language
      t.text :comment

      t.timestamps null: false
    end
  end
end
