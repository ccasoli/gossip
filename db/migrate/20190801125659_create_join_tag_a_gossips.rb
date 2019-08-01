class CreateJoinTagAGossips < ActiveRecord::Migration[5.2]
  def change
    create_table :join_tag_a_gossips do |t|
      t.belongs_to :tag, index: true
      t.belongs_to :a_gossip, index: true
      t.timestamps
    end
  end
end
