class AddServiceIdToFilms < ActiveRecord::Migration[6.0]
  def change
    add_column :films, :service_id, :integer
  end
end
