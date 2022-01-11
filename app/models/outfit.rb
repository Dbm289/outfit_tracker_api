class Outfit < ApplicationRecord
    belongs_to :user
    has_many :comments, :dependent => :destroy
    has_many :likes, :dependent => :destroy
    has_one :link, :dependent => :destroy
    has_many :ratings, :dependent => :destroy

    def avg_review
        ratings.average(:rating).round(2).to_f

end
