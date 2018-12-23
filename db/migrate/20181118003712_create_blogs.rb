class CreateBlogs < ActiveRecord::Migration[5.1]
  def change
    create_table :blogs do |t|
      t.string "title"
      t.text "content"
      t.datetime "created_at"
    end
  end
end
