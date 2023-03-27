class CreatePokeMoves < ActiveRecord::Migration[7.0]
  def change
    create_table :poke_moves do |t|
      t.references :move, null: false, foreign_key: true
      t.references :pokemon, null: false, foreign_key: true
      t.timestamps
    end
  end
end
