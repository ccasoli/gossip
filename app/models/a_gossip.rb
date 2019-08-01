class AGossip < ApplicationRecord
    belongs_to :user
    has_many :join_tag_a_gossips
    has_many :tags, through: :join_tag_a_gossips
end
