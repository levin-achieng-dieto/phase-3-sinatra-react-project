class CreateInshelves < ActiveRecord::Migration[6.1]
  def change
    create_table :inshelves do |t|
      t.integer :num_of_books
    end
  end
end
