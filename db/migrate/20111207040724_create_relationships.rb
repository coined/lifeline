class CreateRelationships < ActiveRecord::Migration
  def change
    create_table :relationships do |t|
      t.integer :relationship_type
      t.integer :from_id
      t.integer :to_id

      t.timestamps
    end
  end
end
