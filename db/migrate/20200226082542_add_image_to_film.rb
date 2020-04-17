class AddImageToFilm < ActiveRecord::Migration[6.0]
  def change
    add_column :films, :image, :string
  end
end
