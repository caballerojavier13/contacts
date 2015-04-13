class CreateFavorites < ActiveRecord::Migration
  def change
    create_table :favorites do |t|
      t.string :favorable_type
      t.integer :favorable_id
      t.integer :favorer_id

      t.timestamps
    end
  end
end
