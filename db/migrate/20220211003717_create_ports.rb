class CreatePorts < ActiveRecord::Migration[6.1]
  def change
    create_table :ports do |t|
      
      t.belongs_to :game, index: true
      t.belongs_to :console, index: true
      t.timestamps
    end
  end
end
