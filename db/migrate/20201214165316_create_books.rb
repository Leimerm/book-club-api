class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :genre
      t.string :intened_audience
      t.string :part_of_series
      t.string :next_book
      t.integer :rating
      t.string :cover_picture
      t.string :alt_cover1
      t.string :alt_cover2
      t.string :alt_cover3
      t.string :summary

      t.timestamps
    end
  end
end
