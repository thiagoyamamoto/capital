class AddAttachmentPictureToService < ActiveRecord::Migration
  def self.up
    change_table :services do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :ads, :picture
  end
end
