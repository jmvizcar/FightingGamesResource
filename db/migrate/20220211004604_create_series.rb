class CreateSeries < ActiveRecord::Migration[6.1]
  def change
    create_table :series do |t|
      
      t.string :name
      t.belongs_to :developer, index: true
      t.timestamps
    end
  end
end
