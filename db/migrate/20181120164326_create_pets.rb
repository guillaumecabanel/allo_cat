class CreatePets < ActiveRecord::Migration[5.2]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :specy
      t.string :sign
      t.boolean :found, default: false

      t.timestamps
    end
  end
end
