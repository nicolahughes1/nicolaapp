class CreateUserfirstNames < ActiveRecord::Migration
  def change
    create_table :userfirst_names do |t|
      t.string :last_name

      t.timestamps null: false
    end
  end
end
