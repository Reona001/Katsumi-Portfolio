class AddPostRefToBlogposts < ActiveRecord::Migration[6.1]
  def change
    add_reference :blogposts, :post, null: false, foreign_key: true
  end
end
