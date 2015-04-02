class AddVisualToGraphic < ActiveRecord::Migration
  def change
    add_column :graphics, :visual, :string
  end
end
