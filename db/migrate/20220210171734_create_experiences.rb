class CreateExperiences < ActiveRecord::Migration[6.1]
  def change
    create_table :experiences do |t|
      t.string :title
      t.string :description
      t.datetime :date
      t.string :status
      t.string :skills
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
