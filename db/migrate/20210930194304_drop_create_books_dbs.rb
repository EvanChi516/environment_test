class DropCreateBooksDbs < ActiveRecord::Migration[6.1]
  def change
    drop_table :create_books_dbs
  end
end
