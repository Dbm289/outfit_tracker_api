class AddLikesToOutfits < ActiveRecord::Migration[6.1]
  def change
    add_column :outfits, :like, :integer
  end
end
