class AddAttachmentImageToGraphics < ActiveRecord::Migration
  def self.up
    change_table :graphics do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :graphics, :image
  end
end
