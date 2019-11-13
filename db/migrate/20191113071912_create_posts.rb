class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :subject
      t.string :score
      t.timestamps
    end
  end
end
