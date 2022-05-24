class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :sectiontitle
      t.text :content
      t.references :blogpost, null: false, foreign_key: true

      t.timestamps
    end
  end
end
