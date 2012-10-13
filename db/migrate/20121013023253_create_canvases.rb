class CreateCanvases < ActiveRecord::Migration
  def change
    create_table :canvases do |t|
      t.integer :user_id
      t.boolean :public
      t.string :title
      t.text :description
      t.text :customer_segments
      t.text :value_propositions
      t.text :channels
      t.text :customer_relationships
      t.text :revenue_streams
      t.text :key_resources
      t.text :key_activities
      t.text :key_partnerships
      t.text :cost_structure

      t.timestamps
    end
  end
end
