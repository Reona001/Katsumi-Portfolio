class CreateInquiries < ActiveRecord::Migration[6.1]
  def change
    create_table :inquiries do |t|
      t.string :content
      t.references :user, null: false, foreign_key: true
      t.string :email

      t.timestamps
    end
  end
end
