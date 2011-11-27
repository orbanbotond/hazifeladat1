class CreateBlogposts < ActiveRecord::Migration
  def change
    create_table :blogposts do |t|
      t.string :title
      t.text :content
      t.datetime :written_at

      t.timestamps
    end
  end
end
