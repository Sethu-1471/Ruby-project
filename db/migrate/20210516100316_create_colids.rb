class CreateColids < ActiveRecord::Migration[6.1]
  def change
    create_table :colids do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.string :staff
      t.string :location

      t.timestamps
    end
  end
end
