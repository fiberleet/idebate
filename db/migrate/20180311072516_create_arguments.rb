class CreateArguments < ActiveRecord::Migration[5.1]
  def change
    create_table :arguments do |t|
      t.references :debate, foreign_key: true
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
