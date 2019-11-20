class ChangeThread1sNameNotNull < ActiveRecord::Migration[5.2]
  def change
    change_column_null :thread1s, :name, false
  end
end
