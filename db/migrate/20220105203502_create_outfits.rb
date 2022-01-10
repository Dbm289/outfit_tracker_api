class CreateOutfits < ActiveRecord::Migration[6.1]
  def change
    create_table :outfits do |t|
      t.string :image
      t.string :description
      t.integer :rating_agg
      t.string :shopping_links
      t.belongs_to :user, null: false, foreign_key: true


      t.timestamps
    end
  end
end
