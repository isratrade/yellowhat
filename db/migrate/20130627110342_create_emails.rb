class CreateEmails < ActiveRecord::Migration
  def change
    create_table :emails do |t|
      t.string :first_name
      t.string :last_name
      t.string :title
      t.text :description
      t.string :mobile_phone
      t.string :work_phone
      t.string :home_phone
      t.string :avatar
      t.string :irc_name
      t.date :birthday
      t.string :floor_level
      t.string :desk_number

      t.timestamps
    end
  end
end
