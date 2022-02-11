class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :created
      t.string :created_by
      t.string :stack_used
      t.string :url
      t.string :git_repo_url
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
