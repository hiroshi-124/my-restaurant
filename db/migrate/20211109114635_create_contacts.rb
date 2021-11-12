class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.string "name"
      t.string "email"
      t.string "subject"
      t.integer "phone_numb"
      t.text "message"
      t.integer "answer_to_return"

      t.timestamps
    end
  end
end
