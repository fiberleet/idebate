class CreateDebates < ActiveRecord::Migration[5.1]
  def change
    create_table :debates do |t|
      t.references :argument, foreign_key: true
      t.references :topic, foreign_key: true

      t.timestamps
    end
  end
end
