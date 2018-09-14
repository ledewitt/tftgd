class CreatePostsTable < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :title
      t.text :body
      t.string :author_name
      t.datetime :date_time
      t.timestamps null: false
    end
    
    create_table :game_plays do |t|
      t.datetime :date_time
      t.text :score_board
      t.string :game
      t.string :game_bgg_link
      t.timestamps null: false
      t.belongs_to :entry, index: true
    end
  end
end
