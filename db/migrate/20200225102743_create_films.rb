class CreateFilms < ActiveRecord::Migration[6.0]
  def change
    create_table :films do |t|
      t.text :body
      t.string :title
      t.string :actor
      t.integer :released_year
      t.timestamps
    end
  end
end
