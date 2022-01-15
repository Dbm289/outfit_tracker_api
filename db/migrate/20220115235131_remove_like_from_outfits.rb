class RemoveLikeFromOutfits < ActiveRecord::Migration[6.1]
  def change
    remove_column :outfits, :like, :integer
  end
end
