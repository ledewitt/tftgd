class CreatePostsTable < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.string :author_name
      t.timestamps null: false
    end
    
    create_table :sessions do |t|
      t.datetime :date_time
      t.text :score_board
      t.string :game
      t.string :game_bgg_link
      t.timestamps null: false
    end
  end
end
