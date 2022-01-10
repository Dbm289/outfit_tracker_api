class CreateLinks < ActiveRecord::Migration[6.1]
  def change
    create_table :links do |t|
      t.string :links
      t.belongs_to :outfit, null: false, foreign_key: true


      t.timestamps
    end
  end
end
