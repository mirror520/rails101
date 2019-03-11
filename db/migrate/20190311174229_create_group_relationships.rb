class CreateGroupRelationships < ActiveRecord::Migration[5.2]
  def change
    create_table :group_relationships, primary_key: %i[group_id user_id] do |t|
      t.references :group, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
