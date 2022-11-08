class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :image
      t.string :title
      t.string :author
      t.string :pages
      t.integer :inshelve_id
    end
  end
end
