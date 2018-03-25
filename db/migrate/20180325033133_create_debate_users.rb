class CreateDebateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :debate_users do |t|
  	  t.belongs_to :user, index: true
  	  t.belongs_to :debate, index: true
      t.timestamps
    end
  end
end
