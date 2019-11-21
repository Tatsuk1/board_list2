class AddUserIdToThread1s < ActiveRecord::Migration[5.2]
  def up
    execute 'DELETE FROM thread1s;'
    add_reference :thread1s, :user, null: false, index: true
  end

  def down
    remove_reference :thread1s, :user, index: true
  end
end
