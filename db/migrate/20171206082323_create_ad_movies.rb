class CreateAdMovies < ActiveRecord::Migration[5.1]
  def change
    create_table :ad_movies do |t|
      t.string :name
      t.string :url
      t.integer :size

      t.timestamps
    end
  end
end
