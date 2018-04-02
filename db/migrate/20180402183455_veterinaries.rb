class Veterinaries < ActiveRecord::Migration[5.1]
  def up
    create_table :veterinaries do |t|
      t.string :name
      t.text :address
      t.string :city
      t.string :town
      t.string :telephone
      t.string :website
      t.string :email
    end
  end

  def down
    drop_table :veterinaries
  end
end
