class CreateEntries < ActiveRecord::Migration[5.1]
  def change
    create_table :entries do |t|
      t.string :title
      t.date :date
      t.text :dontents

      t.timestamps
    end
  end
end
