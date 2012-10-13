class CreateCollaborators < ActiveRecord::Migration
  def change
    create_table :collaborators do |t|
      t.integer :canvas_id
      t.integer :user_id
      t.string :permission

      t.timestamps
    end
  end
end
