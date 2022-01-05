class CreateOutfits < ActiveRecord::Migration[6.1]
  def change
    create_table :outfits do |t|
      t.string :image
      t.string :description
      t.integer :rating_agg
      t.string :shopping_links

      t.timestamps
    end
  end
end
