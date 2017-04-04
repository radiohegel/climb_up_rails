class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :email, null: false
      t.string :password_digest, null: false
      t.text :about
      t.integer :grade, null: false
      t.boolean :wants_partners, default: true
      t.integer :gym_id, index: true, foreign_key: true

      t.timestamps
    end
  end
end
