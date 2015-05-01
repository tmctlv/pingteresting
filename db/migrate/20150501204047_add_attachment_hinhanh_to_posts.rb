class AddAttachmentHinhanhToPosts < ActiveRecord::Migration
  def self.up
    change_table :posts do |t|
      t.attachment :hinhanh
    end
  end

  def self.down
    remove_attachment :posts, :hinhanh
  end
end
