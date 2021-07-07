class CreateFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :favorites do |t|
      t.string :content
      t.references :user, foreign_key: true

      t.timestamps
      t.index [:user_id, :book_id], unque: true

    end
  end
end
