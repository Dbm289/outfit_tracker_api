class AddLikesColumnToOutfits < ActiveRecord::Migration[6.1]
  def change
    add_column :outfits, :likes, :integer
  end
end
