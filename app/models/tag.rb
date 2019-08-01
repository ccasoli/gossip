class Tag < ApplicationRecord
    has_many :join_tag_a_gossips
    has_many :a_gossips, through: :join_tag_a_gossips
end
