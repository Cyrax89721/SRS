class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :position
      t.string :address
      t.string :phone1
      t.string :phone2
      t.string :email
      t.text :notes
      t.timestamps
    end
  end
end
