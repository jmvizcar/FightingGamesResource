class CreateConsoles < ActiveRecord::Migration[6.1]
  def change
    create_table :consoles do |t|
      
      t.string :name
      t.timestamps
    end
  end
end
