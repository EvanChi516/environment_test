class CreateCreateBooksDbs < ActiveRecord::Migration[6.1]
  def change
    create_table :create_books_dbs do |t|
      t.string :title
      t.string :author
      t.float :price
      t.date :publishDate

      t.timestamps
    end
  end
end
