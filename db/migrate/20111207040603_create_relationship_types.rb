class CreateRelationshipTypes < ActiveRecord::Migration
  def change
    create_table :relationship_types do |t|
      t.string :name
      t.integer :corresponding_id

      t.timestamps
    end
  end
end
