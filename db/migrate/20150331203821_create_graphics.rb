class CreateGraphics < ActiveRecord::Migration
  def change
    create_table :graphics do |t|
      t.string :name
      t.string :description
      t.belongs_to :section

      t.timestamps
    end
  end
end
