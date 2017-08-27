class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      
      t.string :title
      t.string :content
      t.string :written_by

      t.integer :hits, default: 0
  
      t.timestamps null: false
    end
  end
end
