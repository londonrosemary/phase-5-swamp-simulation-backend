class CreatePets < ActiveRecord::Migration[6.1]
  def change
    create_table :pets do |t|
      t.string :name
      t.integer :happiness
      t.integer :health
      t.integer :hunger
      t.integer :thirst
      t.integer :boredom
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
