class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :theme
      t.text :guide
      t.string :language
      t.string :region
      t.text :content

      t.timestamps null: false
    end
  end
end
