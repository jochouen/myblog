class CreateBulletinBoards < ActiveRecord::Migration
  def change
    create_table :bulletin_boards do |t|
      t.string :username
      t.string :message

      t.timestamps null: false
    end
  end
end
