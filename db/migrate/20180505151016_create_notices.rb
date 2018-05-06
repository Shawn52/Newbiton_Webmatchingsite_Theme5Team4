class CreateNotices < ActiveRecord::Migration
  def change
    create_table :notices do |t|
      t.text :picture
      t.string :t_place
      t.timestamps null: false
    end
  end
end
