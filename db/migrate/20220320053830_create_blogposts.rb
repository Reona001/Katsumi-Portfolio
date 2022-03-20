class CreateBlogposts < ActiveRecord::Migration[6.1]
  def change
    create_table :blogposts do |t|
      t.string :title˜
      t.text :description
      t.text :content
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
