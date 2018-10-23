class CreateDestinations < ActiveRecord::Migration[5.2]
  def change
    create_table :destinations do |t|
      t.string :name
      t.string :climate
      t.string :img_url
      t.string :description
      t.integer :budget
      t.string :activity

      t.timestamps
    end
  end
end
