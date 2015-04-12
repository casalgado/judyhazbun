class AddPositionToGraphics < ActiveRecord::Migration
  def change
    add_column :graphics, :position, :integer
  end
end
