class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.text :services
      t.string :street
      t.string :city
      t.string :state
      t.integer :zip
      t.integer :latitude
      t.integer :longitude
      t.string :pic
      t.text :description

      t.timestamps null: false
    end
  end
end
