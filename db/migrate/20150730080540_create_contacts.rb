class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :subject
      t.string :body

      t.timestamps
    end
  end
end
