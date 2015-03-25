class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :title
      t.text :description
      t.references :board, index: true
      t.string :state

      t.timestamps null: false
    end
    add_foreign_key :cards, :boards
  end
end
