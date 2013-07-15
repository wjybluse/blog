class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :author
      t.string :d_type
      t.string :body

      t.timestamps
    end
  end
end
