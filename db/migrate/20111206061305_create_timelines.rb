class CreateTimelines < ActiveRecord::Migration
  def change
    create_table :timelines do |t|
      t.integer :owner_id
      t.integer :subject_id
      t.string :name
      t.date :start
      t.date :end

      t.timestamps
    end
  end
end
