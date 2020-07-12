class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.string :text
      t.string :ip
      t.string :room_id

      t.timestamps
    end
  end
end
